/*
 Question - Search a 2D Matrix
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/561/week-3-october-15th-october-21st/3497/
 */

class Solution {
  func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    if matrix.count == 0 || matrix[0].count == 0 { return false }
    var row = matrix.count, column = matrix[0].count, left = 0, right = row * column - 1, middle = 0
    while left < right{
      middle = (left + right) / 2
      if matrix[middle / column][middle % column] < target{
        left = middle + 1
      }else{
        right = middle
      }
    }
    return matrix[right / column][right % column] == target
  }
}
