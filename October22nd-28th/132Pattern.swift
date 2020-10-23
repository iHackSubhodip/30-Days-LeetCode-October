/*
 Question - 132 Pattern
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/562/week-4-october-22nd-october-28th/3505/
 */

class Solution {
  func find132pattern(_ nums: [Int]) -> Bool {
    guard nums.count > 2 else { return false }
    
    var stack: [Int] = [], mid = Int.min
    for i in stride(from: nums.count - 1, through: 0, by: -1) {
      if nums[i] < mid { return true }
      while !stack.isEmpty && nums[i] > stack.last! {
        mid = max(mid, stack.removeLast())
      }
      
      stack.append(nums[i])
    }
    return false
  }
}
