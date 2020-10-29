/*
 Question - Maximize Distance to Closest Person
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/563/week-5-october-29th-october-31st/3512/
 */

class Solution {
  func maxDistToClosest(_ seats: [Int]) -> Int {
    var max0sBetween = 0, max0sEdge = 0
    for i in 0..<seats.count where seats[i] == 0 {
      var j = i
      while j < seats.count && seats[j] == 0 {
        j += 1
      }
      if i == 0 || j == seats.count {
        max0sEdge = max(max0sEdge, j - i)
      } else {
        max0sBetween = max(max0sBetween, j - i)
      }
    }
    return max((max0sBetween + 1) / 2, max0sEdge)
  }
}
