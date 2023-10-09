import Foundation

var greeting = "LC # 347 Top K Frequency"

/*
The Problem
 Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.



 Example 1:

 Input: nums = [1,1,1,2,2,3], k = 2
 Output: [1,2]
 Example 2:

 Input: nums = [1], k = 1
 Output: [1]

  var frequencyDict = [Int: Int]()
         for num in nums {
             frequencyDict[num, default: 0] += 1
         }
         let sortedDict = frequencyDict.sorted { $0.value > $1.value }
         var result = [Int]()
         for i in 0 ..< k {
             result.append(sortedDict[i].key)
         }
         return result
*/

// Leetcode submission
class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
      var freqDict = [Int: Int]()
      // create a dictionary to keep track of the amount of each value
      for num in nums {
        if let curr = freqDict[num] {
            freqDict[num] = curr + 1
        } else {
            freqDict[num] = 1
        }
      }

      let sortedDict = freqDict.sorted { $0.value > $1.value }
      // check the top values
      var sol = [Int]()

      for i in 0..<k {
          sol.append(sortedDict[i].key)
      }

      return sol
    }
}


// Repl.it code


func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var freqDict = [Int: Int]()
    // create a dictionary to keep track of the amount of each
    // value
    for num in nums {
        if let curr = freqDict[num] {
            freqDict[num] = curr + 1
        } else {
            freqDict[num] = 1
        }
    }
    let sortedDict = freqDict.sorted { $0.value > $1.value }
    // check the top values
    var sol = [Int]()

    for i in 0..<k {
      sol.append(sortedDict[i].key)
    }
    //  sol = freqDict[0..<k]

    // return to he top k elements
    return sol
}

let ex1 = [1,1,1,2,2,3] // k = 2
let ex2 = [1]  // k = 1

print(topKFrequent(ex1, 2))
print(topKFrequent(ex2, 1))
