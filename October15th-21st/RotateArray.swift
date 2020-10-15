/*
 Question - Rotate Array
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/561/week-3-october-15th-october-21st/3496/
 */

class Solution {
  func rotate(_ nums: inout [Int], _ k: Int) {
    guard nums.count > 1 else { return }
    var i = k % nums.count
    guard i > 0 else { return }
    reverse(&nums, 0, nums.count - 1)
    reverse(&nums, 0, i - 1)
    reverse(&nums, i, nums.count - 1)
  }
  
  fileprivate func reverse(_ nums: inout [Int],_ start: Int,_ end: Int){
    var i = start, j = end
    while i < j{
      let temp = nums[j]
      nums[j] = nums[i]
      nums[i] = temp
      i += 1
      j -= 1
    }
  }
}
