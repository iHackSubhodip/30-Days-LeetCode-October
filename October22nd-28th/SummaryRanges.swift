/*
 Question - Summary Ranges
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/562/week-4-october-22nd-october-28th/3510/
 */

class Solution {
  func summaryRanges(_ nums: [Int]) -> [String] {
    var output: [String] = [], i = 0
    while i < nums.count{
      var j = i
      while j + 1 < nums.count && nums[j+1] == nums[j] + 1{
        j += 1
      }
      
      if i == j {
        output.append("\(nums[i])")
      }else{
        output.append("\(nums[i])->\(nums[j])")
      }
      i = j + 1
    }
    return output
  }
}
