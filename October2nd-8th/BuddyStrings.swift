/*
 Question - Buddy Strings
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/560/week-2-october-8th-october-14th/3492/
 */

class Solution {
  func buddyStrings(_ A: String, _ B: String) -> Bool {
    guard A.count == B.count else { return false }
    if A == B {
      return Set(A).count < A.count
    } else {
      var diffs = [Int]()
      let A = Array(A), B = Array(B)
      for i in 0..<A.count {
        if A[i] != B[i] {
          diffs.append(i)
        }
      }
      guard diffs.count == 2 else { return false }
      let i = diffs[0], j = diffs[1]
      return A[i] == B[j] && A[j] == B[i]
    }
  }
}
