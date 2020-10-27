/*
 Question - Linked List Cycle II
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/562/week-4-october-22nd-october-28th/3509/
 */

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
}


class Solution {
  func detectCycle(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil {
      return nil
    }
    
    var slow = head, fast = head, entry = head
    
    while fast?.next != nil && fast?.next?.next != nil {
      slow = slow?.next
      fast = fast?.next?.next
      
      if slow === fast {
        while !(slow === entry) {
          slow = slow?.next
          entry = entry?.next
        }
        return entry
      }
    }
    
    return nil
  }
}
