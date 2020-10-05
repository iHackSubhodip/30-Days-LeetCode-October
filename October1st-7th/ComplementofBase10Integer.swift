/*
 Question - Complement of Base 10 Integer
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/559/week-1-october-1st-october-7th/3484/
 */

class Solution {
  func bitwiseComplement(_ N: Int) -> Int {
    var resultString = ""
    let binaryString = String(N, radix: 2)
    
    for char in binaryString {
      resultString += (char == "1") ? "0" : "1"
    }
    
    return Int(resultString, radix: 2) ?? -1
  }
}
