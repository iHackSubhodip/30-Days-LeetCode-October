/*
 Question - Number of Recent Calls
 Link - > https://leetcode.com/explore/challenge/card/october-leetcoding-challenge/559/week-1-october-1st-october-7th/3480/
 */

class RecentCounter {
  private var callTime: [Int] = []
  private var lastFits: Int = 0
  private let timeLimite: Int = 3000
  
  init() {
    
  }
  
  func ping(_ t: Int) -> Int {
    callTime.append(t)
    while t - callTime[lastFits] > timeLimite {
      lastFits += 1
    }
    return callTime.count - lastFits
  }
}

