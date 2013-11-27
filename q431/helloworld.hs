-- import Foreign.Storable
import Data.Char
-- one = length $ show $ sizeOf $ True -- 4
one = length $ return undefined -- https://gist.github.com/takeouchida/7669018
two = one+one
x n = two*n
-- y n = two*n+one
y n = succ $ x n
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