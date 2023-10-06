import Foundation

var greeting = "Valid Sudoku"

/*
 Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

 Each row must contain the digits 1-9 without repetition.
 Each column must contain the digits 1-9 without repetition.
 Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
 Note:

 A Sudoku board (partially filled) could be valid but is not necessarily solvable.
 Only the filled cells need to be validated according to the mentioned rules.
*/

func isValidSudoku(_ board: [[String]]) -> Bool {
    var freqDict: [String: Int] = [:]
    var rowLap = 0
    var colLap = 0
    // check each row
    for curRow in board {
        // check each number in the row
        for num in curRow {
            while rowLap < 9 {
                if let count = freqDict[num] {
                    // current number already exist in dictionary
                    freqDict[num] = count + 1
                    // end program because we count two digits of the same in row
                    return false
                } else {
                    // first occurence of the number
                    freqDict[num] = 1
                }
                rowLap += 1
                print(rowLap)
            }
        }
    }

//    print(freqDict)


    // check all elements in the same column







    return true
}


let board1 = [["5","3",".",".","7",".",".",".","."]
               ,["6",".",".","1","9","5",".",".","."]
               ,[".","9","8",".",".",".",".","6","."]
               ,["8",".",".",".","6",".",".",".","3"]
               ,["4",".",".","8",".","3",".",".","1"]
               ,["7",".",".",".","2",".",".",".","6"]
               ,[".","6",".",".",".",".","2","8","."]
               ,[".",".",".","4","1","9",".",".","5"]
               ,[".",".",".",".","8",".",".","7","9"]]


let board2 = [["8","3",".",".","7",".",".",".","."]
              ,["6",".",".","1","9","5",".",".","."]
              ,[".","9","8",".",".",".",".","6","."]
              ,["8",".",".",".","6",".",".",".","3"]
              ,["4",".",".","8",".","3",".",".","1"]
              ,["7",".",".",".","2",".",".",".","6"]
              ,[".","6",".",".",".",".","2","8","."]
              ,[".",".",".","4","1","9",".",".","5"]
              ,[".",".",".",".","8",".",".","7","9"]]


isValidSudoku(board1)

