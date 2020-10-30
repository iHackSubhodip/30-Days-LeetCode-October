/*
 Question - Number of Longest Increasing Subsequence
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/563/week-5-october-29th-october-31st/3513/
 */

class Solution {
  func findNumberOfLIS(_ nums: [Int]) -> Int {
    var dp: [Int] = Array(repeating: 0, count: nums.count + 1), cnt: [Int] = Array(repeating: 0, count: nums.count + 1)
    
    var maxLength = 0
    for i in 0..<nums.count {
      dp[i] = 1
      cnt[i] = 1
      for j in stride(from: i - 1, to: -1, by: -1) {
        if nums[i] > nums[j] {
          if dp[i] < dp[j] + 1 {
            dp[i] = dp[j] + 1
            cnt[i] = cnt[j]
          } else if dp[i] == dp[j] + 1 {
            cnt[i] += cnt[j]
          }
        }
      }
      maxLength = max(dp[i], maxLength)
    }
    
    return dp.enumerated().reduce(0) { $0 + ($1.element == maxLength ? cnt[$1.offset] : 0) }
  }
}
