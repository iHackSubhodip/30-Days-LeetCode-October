/*
 Question - Meeting Rooms II
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/561/week-3-october-15th-october-21st/3495/
 */

class Solution {
  func minMeetingRooms(_ intervals: [[Int]]) -> Int {
    var start = intervals.map { $0.first! }.sorted()
    var end = intervals.map{ $0.last! }.sorted()
    // print(start)
    // print(end)
    var j = 0, result = 0
    for i in 0..<intervals.count{
      if start[i] < end[j]{
        result += 1
      }else{
        j += 1
      }
    }
    return result
  }
}
