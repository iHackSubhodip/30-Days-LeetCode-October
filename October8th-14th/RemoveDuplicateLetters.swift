/*
 Question - Remove Duplicate Letters
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/560/week-2-october-8th-october-14th/3491/
 */

class Solution {
  func removeDuplicateLetters(_ s: String) -> String {
    if s.count == 0 {
      return ""
    }
    
    let aNum = Int("a".unicodeScalars.filter{$0.isASCII}.map{$0.value}.first!)
    let characters = Array(s.lowercased())
    var counts = [Int](repeatElement(0, count: 26))
    var visited = [Bool](repeatElement(false, count: 26))
    var stack = [Character]()
    var i = 0
    
    for character in characters {
      if let num = asciiValueOfCharacter(character) {
        counts[num - aNum] += 1
      }
    }
    
    for character in characters {
      if let num = asciiValueOfCharacter(character) {
        i = num - aNum
        counts[i] -= 1
        if visited[i] {
          continue
        }
        while !stack.isEmpty, let peekNum = asciiValueOfCharacter(stack.last!), num < peekNum && counts[peekNum - aNum] != 0 {
          visited[peekNum - aNum] = false
          stack.removeLast()
        }
        stack.append(character)
        visited[i] = true
      }
    }
    
    return String(stack)
  }
  
  func asciiValueOfCharacter(_ character: Character) -> Int? {
    let value = String(character).unicodeScalars.filter{$0.isASCII}.first?.value ?? 0
    return Int(value)
  }
}
