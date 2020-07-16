import UIKit

var array : [Int] = [Int]()
for i in 1...255 {
    array.append(i)
}
print(array)

array.swapAt(Int(arc4random_uniform(254)), Int(arc4random_uniform(254)))
print(array)

var i = 1
while i < 101 {
    array.swapAt(Int(arc4random_uniform(254)), Int(arc4random_uniform(254)))
    i += 1
}
print(array)

if let ind = array.firstIndex(of: 42) {
    array.remove(at: ind)
    print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(ind)")
}
