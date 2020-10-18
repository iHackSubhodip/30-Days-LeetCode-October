/*
 Question - Repeated DNA Sequences
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/561/week-3-october-15th-october-21st/3498/
 */

class Solution {
  func maxProfit(_ k: Int, _ prices: [Int]) -> Int {
    let n = prices.count
    
    guard k > 0 && n > 1 else {
      return 0
    }
    guard k < n else {
      return makeMaxProfit(prices)
    }
    
    
    var local = Array(repeating: 0, count: k + 1), global = Array(repeating: 0, count: k + 1)
    
    for i in 0..<n - 1 {
      let diff = prices[i + 1] - prices[i]
      for j in stride(from: k, to: 0, by: -1) {
        local[j] = max(global[j - 1] + max(diff, 0), local[j] + diff)
        global[j] = max(global[j], local[j])
      }
    }
    
    return global[k]
  }
  
  private func makeMaxProfit(_ prices: [Int]) -> Int {
    var sum = 0
    
    for i in 1..<prices.count {
      let diff = prices[i] - prices[i - 1]
      sum += diff > 0 ? diff : 0
    }
    
    return sum
  }
}
