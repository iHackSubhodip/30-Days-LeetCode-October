/*
 Question - Sort List
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/560/week-2-october-8th-october-14th/3493/
 */

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next =nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val =val; self.next = next; }
}

class Solution {
  func sortList(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil { return head }
    var slow = head, fast = head, prev: ListNode?
    while fast?.next != nil {
      prev = slow
      slow = slow?.next
      fast = fast?.next?.next
    }
    prev?.next = nil // unlinks list
    let l1 = sortList(head)
    let l2 = sortList(slow)
    return merge(l1, l2)
  }
  
  func merge(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var l1 = l1, l2 = l2, ph = ListNode(-1), cur = ph
    while l1 != nil && l2 != nil {
      if l1!.val < l2!.val {
        cur.next = l1
        l1 = l1?.next
      } else {
        cur.next = l2
        l2 = l2?.next
      }
      cur = cur.next!
    }
    cur.next = (l1 != nil) ? l1 : l2
    return ph.next
  }
}
