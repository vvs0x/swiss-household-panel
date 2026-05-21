-- Live character counter for LNW3 (chars w/o spaces in Chapters 1-4)
-- Loaded from preamble.tex via \directlua{dofile("wordcount.lua")}

local function count_file(path)
  local f = io.open(path, "r")
  if not f then return 0 end
  local s = f:read("*a")
  f:close()

  -- Restrict to Kap. 1-4 (LNW3 zählt nur diese). Slice zwischen den Markern
  -- "% LNW3-COUNT-START" und "% LNW3-COUNT-END" in der .tex-Datei.
  -- Wird ein Marker nicht gefunden, wird die ganze Datei gezählt (Fallback).
  local s_pos = s:find("LNW3%-COUNT%-START")
  if s_pos then s = s:sub(s_pos) end
  local e_pos = s:find("LNW3%-COUNT%-END")
  if e_pos then s = s:sub(1, e_pos - 1) end

  -- strip line comments
  s = s:gsub("%%[^\n]*", "")

  -- strip whole environments whose source is not "narrative body text"
  -- figure/table = visual metadata (caption, label, includegraphics) -- counted via the body text that introduces them
  for _, env in ipairs({"figure","table","tikzpicture","lstlisting","verbatim","minted","equation","align","tabular","tabularx","longtable"}) do
    s = s:gsub("\\begin%s*{" .. env .. "%*?}.-\\end%s*{" .. env .. "%*?}", "")
  end

  -- drop \cite[opt]{key} and \cite{key} (any cite-variant)
  s = s:gsub("\\cite[%w]*%s*%b[]%s*%b{}", "")
  s = s:gsub("\\cite[%w]*%s*%b{}", "")

  -- drop \label{...}
  s = s:gsub("\\label%s*%b{}", "")

  -- \ref-family: replaced by single placeholder X (rendered number is ~1 char)
  for _, cmd in ipairs({"ref","autoref","pageref","cref","Cref","eqref"}) do
    s = s:gsub("\\" .. cmd .. "%s*%b{}", "X")
  end

  -- formatting commands: keep their argument text
  for _, cmd in ipairs({"emph","textbf","textit","texttt","underline","textsc"}) do
    s = s:gsub("\\" .. cmd .. "%s*({[^}]*})", function(a) return a:sub(2,-2) end)
  end

  -- sectioning commands: keep title text
  for _, cmd in ipairs({"chapter","section","subsection","subsubsection","paragraph"}) do
    s = s:gsub("\\" .. cmd .. "%*?%s*({[^}]*})", function(a) return a:sub(2,-2) end)
  end

  -- strip remaining commands (without args)
  s = s:gsub("\\[%a@]+%*?", "")

  -- remove braces and ties
  s = s:gsub("[{}~]", "")

  -- remove all whitespace
  s = s:gsub("%s+", "")

  return utf8.len(s) or #s
end

function lnw3_total()
  local files = {
    "Chapters/Bericht.tex",
  }
  local total = 0
  for _, f in ipairs(files) do
    total = total + count_file(f)
  end
  return total
end

function lnw3_format(n)
  local s = tostring(n)
  return (s:reverse():gsub("(%d%d%d)", "%1'"):reverse():gsub("^'", ""))
end
