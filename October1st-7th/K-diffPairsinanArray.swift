/*
 Question - K-diff Pairs in an Array
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/559/week-1-october-1st-october-7th/3482/
 */

class Solution {
  func findPairs(_ nums: [Int], _ k: Int) -> Int {
    guard nums.count > 1 else { return 0 }
    let nums = nums.sorted()
    var output = Set<[Int]>()
    for i in 0..<(nums.count-1) {
      for j in i+1..<nums.count {
        if (nums[j] - nums [i]) > k {
          break
        }
        
        if nums[j]-nums[i] == k {
          output.insert([nums[i],nums[j]].sorted())
          break
        }
      }
    }
    return output.count
  }
}
