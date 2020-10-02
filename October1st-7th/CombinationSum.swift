/*
 Question - Combination Sum
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/559/week-1-october-1st-october-7th/3481/
 */

class Solution {
  func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var result = [[Int]]()
    var aCandidate = [Int]()
    combinationSumHelper(&result, candidates.sorted(), &aCandidate, target, 0)
    return result
  }
  
  func combinationSumHelper(_ result: inout [[Int]],_ candidates: [Int],_ aCandidate: inout [Int],_ remain: Int,_ start: Int){
    if remain < 0{
      return
    }else if remain == 0{
      result.append(aCandidate)
    }else{
      for i in start..<candidates.count{
        aCandidate.append(candidates[i])
        combinationSumHelper(&result, candidates, &aCandidate, remain - candidates[i], i)
        aCandidate.removeLast()
      }
    }
  }
}
