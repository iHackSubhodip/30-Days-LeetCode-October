/*
 Question - Maximum Distance in Arrays
 Link - > https://leetcode.com/explore/challenge/card/october-leetcoding-challenge/559/week-1-october-1st-october-7th/3479/
 */

class Solution {
  func maxDistance(_ arrays: [[Int]]) -> Int {
    var tmpMin = Int.max, tmpMax = Int.min, maxRes = 0
    
    for (index, array) in arrays.enumerated() {
      if index != 0 {
        maxRes = max(maxRes, abs(tmpMax - array.first!));
        maxRes = max(maxRes, abs(tmpMin - array.last!));
      }
      
      tmpMin = min(tmpMin, array.first!);
      tmpMax = max(tmpMax, array.last!);
    }
    
    return maxRes
  }
}
