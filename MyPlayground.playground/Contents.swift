import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    // given 2 sorted arrays
    //   [1, 2, 3, 0, 0, 0]
    //   [2, 5, 6]
    // given two int representing the number of >0 elements in the array
    // merge the 2 arrays and return it with m + n values ignoring all 0 's
    let totalElements = m + n

    var sortedElements = [Int]()

    for num in nums1 {
        if num != 0 {
            sortedElements.append(num)
        }
    }

    for num in nums2 {
        if num != 0 {
            sortedElements.append(num)
        }
    }

    nums1 = sortedElements.sorted()
    print(nums1)
}
//
//func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//    var arr = nums1 + nums2
//    for (index, num) in arr.enumerated() {
//        print(num)
//        if num == 0 {
//            print("\(num) at index \(index)")
//            arr.remove(at: index)
//        }
//    }
//
//    let lastIndex = m + n - 1
//    nums1 = Array(arr[0...lastIndex]).sorted()
//}
//
var num1 = [1, 2, 3, 0, 0, 0]
var num2 = [2, 5, 6]
merge(&num1, 3, num2, 3)
