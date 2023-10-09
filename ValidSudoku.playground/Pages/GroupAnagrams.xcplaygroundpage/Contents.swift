import Foundation
var greeting = "Leetcode #49 Group Anagrams"



/*
Given an array of strings strs, group the anagrams together. You can return the answer in any order.

An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

Example 1:

Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
Example 2:

Input: strs = [""]
Output: [[""]]
Example 3:

Input: strs = ["a"]
Output: [["a"]]
*/

// Leetcode submission
class Solution {
  func groupAnagrams(_ strs: [String]) -> [[String]] {
    var wordDict = [String: [String]]()
    var sol = [[String]]()

    for word in strs {
      let sorted = word.sorted() // creates an array
      let sortedWord = String(sorted) // creates a single string

      // check if the sorted string exist in disctionary keys
      if var currWords = wordDict[sortedWord] {
        currWords.append(word) // append the new value with it
        wordDict[sortedWord] = currWords  // set the value to the old array and
      } else { // the word isn't saved in the array yet
        wordDict[sortedWord] = [word] // make new position for this chracter order
      }
    }

    // iterate tyhrough the dictionary addiing the arrays from the pairs to the solution
    for pair in wordDict {
      sol.append(pair.value)
    }

    return sol
  }
}

// repl.it code
func groupAnagrams(_ strs: [String]) -> [[String]] {
  var wordDict = [String: Int]()
// given an array of words
  for word in strs {
    if let count = wordDict[word] {
      wordDict[word] = count + 1
    } else {
      wordDict[word] = 1
    }
  }

// sort each word and make a dictonary from the words
}

let ex1 = ["eat","tea","tan","ate","nat","bat"]
groupAnagrams(ex1)
