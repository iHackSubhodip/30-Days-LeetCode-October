/*
 Question - Stone Game IV
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/562/week-4-october-22nd-october-28th/3507/
 */

class Solution {
  func winnerSquareGame(_ n: Int) -> Bool {
    var dp = Array(repeating: false, count: n + 1)
    for i in 1...n {
      for j in 1...Int(sqrt(Double(i))) {
        if dp[i - j * j] == false {
          dp[i] = true
          break
        }
      }
    }
    
    return dp[n]
  }
}
