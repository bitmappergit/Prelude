implementation module System.IO

import Text.Show
import Data.String
import StdFile

putChar :: !*World !Char -> *World
putChar world v
  # (out, world) = stdio world
  # out = fwritec v out
  # (_, world) = fclose out world
  = world

getChar :: !*World -> (!*World, !Char)
getChar world
  # (input, world) = stdio world
  # (_, c, input) = freadc input
  # (_, world) = fclose input world
  = (world, c)

getLine :: !*World -> (!*World, !String)
getLine world
  # (input, world) = stdio world
  # (s, input) = freadline input
  # (_, world) = fclose input world
  = (world, s)

putStr :: !*World !String -> *World
putStr world str
  # (out, world) = stdio world
  # out = fwrites str out
  # (_, world) = fclose out world
  = world

putStrLn :: !*World !String -> *World
putStrLn world str = putStr world (str <> "\n")

print :: !*World !a -> *World | Show a
print world x = putStrLn world (show x)
