/*
 Question - Remove Covered Intervals
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/559/week-1-october-1st-october-7th/3483/
 */

class Solution {
  func removeCoveredIntervals(_ intervals: [[Int]]) -> Int {
    var i = 0, arr = intervals.sorted(by : {$0[0] <= $1[0]})
    while(i < arr.count - 1){
      if arr[i][0] <= arr[i+1][0] && arr[i][1] >= arr[i+1][1]{
        arr.remove(at:i+1)
      }else{
        i += 1
      }
    }
    return arr.count
    
  }
}
