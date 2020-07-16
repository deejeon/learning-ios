import UIKit

func tossCoin() -> String {
    print("Tossing a coin!")
    let choices = ["Heads", "Tails"]
    let result = choices[Int(arc4random_uniform(2))]
    print(result)
    return result
}

func tossMultipleCoins(n: Int) -> Double {
    var counts : [Int] = [0, 0]
    for _ in 1...n {
        let attempt = tossCoin()
        if attempt == "Heads" {
            counts[0] += 1
        } else {
            counts[1] += 1
        }
    }
    return Double(counts[0])/Double(counts[1])
}
print(tossMultipleCoins(n: 10))
