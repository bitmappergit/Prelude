implementation module System.Misc

abort :: !{#Char} -> .a
abort a = code inline {
  .d 1 0
  jsr print_string_
  .o 0 0
  halt
}
