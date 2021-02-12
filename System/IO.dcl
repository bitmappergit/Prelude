definition module System.IO

import Text.Show

putChar :: !*World !Char -> *World
getChar :: !*World -> (!*World, !Char)
putStr :: !*World !String -> *World
putStrLn :: !*World !String -> *World
getLine :: !*World -> (!*World, !String)
print :: !*World !a -> *World | Show a
