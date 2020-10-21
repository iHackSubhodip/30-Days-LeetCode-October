/*
 Question - Asteroid Collision
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/561/week-3-october-15th-october-21st/3502/
 */

class Solution {
  func asteroidCollision(_ asteroids: [Int]) -> [Int] {
    var stack = [Int]()
    
    for asteroid in asteroids {
      if asteroid > 0 {
        stack.append(asteroid)
      } else {
        while let top = stack.last, top > 0, top < abs(asteroid) {
          stack.popLast()
        }
        if let top = stack.last, top == abs(asteroid) {
          stack.popLast()
        } else if stack.isEmpty || stack.last! < 0 {
          stack.append(asteroid)
        }
      }
    }
    
    return stack
  }
}
