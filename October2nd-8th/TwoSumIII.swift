/*
 Question - Two Sum III - Data structure design
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/560/week-2-october-8th-october-14th/3487/
 */

class TwoSum {
  
  private var countHash = [Int: Int]()
  
  init() { }
  
  // Add the number to an internal data structure.
  func add(_ value: Int) {
    // Keep track of the number of times the value is added. Used later to determine the solution.
    if let count = countHash[value] {
      countHash[value] = count + 1
    }
    else {
      countHash[value] = 1
    }
  }
  
  func find(_ value: Int) -> Bool {
    // GUARD: If the dictionary is empty, just return.
    guard !countHash.isEmpty else {
      return false
    }
    
    for addedNumber in countHash.keys {
      // Get the difference and see if it's been added to the list.
      let difference = value - addedNumber
      // If has already been added to the list, check if it's a repeat number.
      if let foundNumberCount = countHash[difference] {
        // If it's not a repeat number, ensure at least one is found.
        if difference != addedNumber && foundNumberCount > 0 {
          return true
        }
          // If it is an identical number, ensure at least two is found to verify
          // two numbers were entered.
        else if (difference == addedNumber) && foundNumberCount > 1 {
          return true
        }
      }
    }
    return false
  }
}
