/*
 Question - Binary Search
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/560/week-2-october-8th-october-14th/3488/
 */

class Solution {
  func search(_ nums: [Int], _ target: Int) -> Int {
    if nums.count == 0 {
      return -1
    }
    var start = 0
    var end = nums.count - 1
    
    while start <= end {
      var middle = (start + end) / 2
      if nums[middle] == target {
        return middle
      } else if nums[middle] > target {
        end = middle - 1
      } else {
        start = middle + 1
      }
    }
    return -1
  }
}
