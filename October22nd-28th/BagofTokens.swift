/*
 Question - Bag of Tokens
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/562/week-4-october-22nd-october-28th/3506/
 */

class Solution {
  func bagOfTokensScore(_ tokens: [Int], _ P: Int) -> Int {
    var sts = tokens.sorted(), mp = 0, cp = 0, power = P
    while sts.count > 0 {
      guard power < sts[0] else {
        power -= sts.remove(at: 0)
        cp += 1
        mp = max(mp, cp)
        continue
      }
      guard cp > 0 else {
        return mp
      }
      power += sts.removeLast()
      cp -= 1
    }
    return mp
  }
}
