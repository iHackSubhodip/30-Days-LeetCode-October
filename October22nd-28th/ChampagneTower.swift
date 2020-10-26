/*
 Question - Champagne Tower
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/562/week-4-october-22nd-october-28th/3508/
 */

class Solution {
  func champagneTower(_ poured: Int, _ query_row: Int, _ query_glass: Int) -> Double {
    
    if poured == 0 { return 0 }
    
    var matrix = [[Double(poured)]]
    
    for row in 0..<query_row {
      matrix.append(Array(repeating: 0, count: row+2))
      for glass in 0..<matrix[row].count {
        if matrix[row][glass] > 1 {
          let excess = (matrix[row][glass] - 1)/2
          matrix[row+1][glass] += excess
          matrix[row+1][glass+1] += excess
        }
      }
    }
    
    return min(1, matrix[query_row][query_glass])
  }
}
