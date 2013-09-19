import Foreign.Storable
import Data.Char
one = do
	length $ show $ sizeOf $ True -- 4
two = do
	one+one
x n = do
	two*n
y n = do
	two*n+one
main = do
	putChar $ chr $ x $ x $ x $ y $ x $ x $ one
	putChar $ chr $ y $ x $ y $ x $ x $ y $ one
	putChar $ chr $ x $ x $ y $ y $ x $ y $ one
	putChar $ chr $ x $ x $ y $ y $ x $ y $ one
	putChar $ chr $ y $ y $ y $ y $ x $ y $ one
	putChar $ chr $ x $ x $ x $ x $ x $ one
	putChar $ chr $ y $ y $ y $ x $ y $ x $ one
	putChar $ chr $ y $ y $ y $ y $ x $ y $ one
	putChar $ chr $ x $ y $ x $ x $ y $ y $ one
	putChar $ chr $ x $ x $ y $ y $ x $ y $ one
	putChar $ chr $ x $ x $ y $ x $ x $ y $ one
	putChar $ chr $ x $ y $ x $ one