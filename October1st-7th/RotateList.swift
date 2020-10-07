/*
 Question - Rotate List
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/559/week-1-october-1st-october-7th/3486/
 */

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
  func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
    guard let head = head else { return nil }
    
    var count = 1 // there's at least a head
    var node = head
    
    while let next = node.next {
      count += 1
      node = next
    }
    
    let rotating = k % count
    if rotating == 0 { // no rotations needed
      return head
    }
    
    let tail = node // node is currently at old tail
    node = head
    for _ in 1..<count-rotating { // move node to the new tail, which is right before the new head
      node = node.next!
    }
    
    tail.next = head // attach old tail to old head
    let newHead = node.next
    node.next = nil // "node" is a new tail, there's nothing after it
    
    return newHead
  }
}
