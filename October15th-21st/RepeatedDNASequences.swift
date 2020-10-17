/*
 Question - Repeated DNA Sequences
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/561/week-3-october-15th-october-21st/3498/
 */

class Solution {
  func findRepeatedDnaSequences(_ s: String) -> [String] {
    let s = Array(s)
    var map = [String: Int]()
    for i in 0..<s.count where i + 10 <= s.count {
      let str = String(s[i..<i+10])
      map[str, default: 0] += 1
    }
    return map.filter { $0.value > 1 }.map { $0.key }
  }
}
