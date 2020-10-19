/*
 Question - Minimum Domino Rotations For Equal Row
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/561/week-3-october-15th-october-21st/3500/
 */

class Solution {
  func minDominoRotations(_ A: [Int], _ B: [Int]) -> Int {
    let res = helper(A, B, A[0])
    if res != -1 || A[0] == B[0] { return res }
    return helper(A, B, B[0])
  }
  
  func helper(_ A: [Int], _ B: [Int],_ target:Int)->Int{
    var rotationA = 0
    var rotationB = 0
    for i in 0..<A.count{
      if A[i] != target && B[i] != target{ return -1}
      else if A[i] != target { rotationA += 1}
      else if B[i] != target { rotationB += 1}
    }
    return min(rotationA, rotationB)
  }
}
