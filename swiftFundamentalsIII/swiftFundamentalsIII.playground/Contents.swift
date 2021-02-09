import UIKit

//1
var arr = Array(0...255)
//print (arr)

//2
//let random = Int(arc4random_uniform(UInt32(arr.count)))
//let random1 = Int(arc4random_uniform(UInt32(arr.count)))
//let temp = arr[random]
//arr[random] = arr[random1]
//arr[random1] = temp
//print(arr)

//3
//for _ in 0...99 {
//    let random2 = Int(arc4random_uniform(UInt32(arr.count)))
//    let random3 = Int(arc4random_uniform(UInt32(arr.count)))
//    let temp = arr[random2]
//    arr[random2] = arr[random3]
//    arr[random3] = temp
//}
//print(arr)

//4
for x in 0..<arr.count {
    if (arr[x] == 42) {
        arr.remove(at: x)
        print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(x)")
        break;
    }
    
}

