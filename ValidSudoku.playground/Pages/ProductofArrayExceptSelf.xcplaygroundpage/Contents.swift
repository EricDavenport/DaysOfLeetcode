class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
      // var cur = 0
      // var sol = [Int]()
      // var prod = 1
      // for num in nums {
      //   if num == 0 { continue }
      //   prod *= num
      // }

      // for num in nums {
      //   if num == 0 {
      //     sol.append(prod)
      //   } else {
      //     sol.append(prod / num)
      //   }

      // }
      // return sol
      // keep track of values to the left
      // keep track of values to the right
      // multiply them to completed the solution
      let count = nums.count
      var leftProduct = [Int]()
      var rightProduct = Array(repeating: 1, count: count)
      var solution = [Int]()

      var multiplier = 1

      // multiplier begins at 1 = first (LP) and last (RP) times 1
      for num in nums {
        // the value of what we are seeing nums the multiplier (all previous nums product)
        multiplier = multiplier * num
        leftProduct.append(multiplier)
      }

      multiplier = 1  // reset multiplier -- now being used for the right

      var currentPosition = count - 1  // index starting at the end

      while (currentPosition >= 0) {
        multiplier = nums[currentPosition] * multiplier
        rightProduct[currentPosition] = multiplier
        currentPosition -= 1
      }

      for i in 0..<nums.count {
        if i == 0 {
          // if the index is 0 - only take the value from right array exclude first index of left
          solution.append(rightProduct[i + 1])
        } else if i == (nums.count - 1) {
          // last index only take value from left array exclude last index on right
          solution.append(leftProduct[i - 1])
        } else { // use the left and right product totals for the final add
          solution.append(leftProduct[i - 1] * rightProduct[i + 1])
        }
      }

      return solution
  }
}


var t1 = [1, 2, 3, 4]

print(productOfArray(t1))
