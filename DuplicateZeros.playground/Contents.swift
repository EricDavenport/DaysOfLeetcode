import Foundation
var greeting = "Duplicate Zeros"

/*
 Given a fixed-length integer array arr, duplicate each occurrence of zero, shifting the remaining elements to the right.

 Note that elements beyond the length of the original array are not written. Do the above modifications to the input array in place and do not return anything.



 Example 1:

 Input: arr = [1,0,2,3,0,4,5,0]
 Output: [1,0,0,2,3,0,0,4]
 Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
 Example 2:

 Input: arr = [1,2,3]
 Output: [1,2,3]
 Explanation: After calling your function, the input array is modified to: [1,2,3]
 */

func duplicateZeros(_ arr: inout [Int]) {
    // use second arr to keep track of the "return"
    var holderArray = [Int]()
    // for loop thrugh given array and add every digit to the second array
    for num in arr {
        if holderArray.count >= arr.count {
            arr = Array(holderArray[0...arr.count - 1])
            break
        }
        holderArray.append(num)

        if num == 0 {
            print("holder count: \(holderArray.count)")
            holderArray.append(0)

        }
    }

    print(holderArray)
    // add for every 0 add 2 zeros to the second array


}

func checkCount(arrCount: Int, holderCount: Int) -> Int {
    if arrCount == holderCount {
        return holderCount
    }
    return 0
}

var test = [8, 4, 5, 0, 0, 0, 0, 7]
duplicateZeros(&test)
