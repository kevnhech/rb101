def short_long_short(first, second)
  if first.length < second.length
    first + second + first
  else
    second + first + second
  end
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"