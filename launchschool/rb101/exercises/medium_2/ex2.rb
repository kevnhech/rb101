# input: string
# output: boolean
# rules: each block can only be used once

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| upstring.count(block) >= 2 }
end