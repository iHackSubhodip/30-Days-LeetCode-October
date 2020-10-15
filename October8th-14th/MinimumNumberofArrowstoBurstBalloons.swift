/*
 Question - Minimum Number of Arrows to Burst Balloons
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/560/week-2-october-8th-october-14th/3489/
 */

class Solution {
  func findMinArrowShots(_ points: [[Int]]) -> Int {
    let points = points.sorted { (p1, p2) -> Bool in
      p1[1] < p2[1]
    }
    guard let first = points.first else {
      return 0
    }
    var curr = 1
    var lastEnd = first[1]
    for point in points.dropFirst() {
      if point[0] > lastEnd {
        curr += 1
        lastEnd = point[1]
      }
    }
    return curr
  }
}
