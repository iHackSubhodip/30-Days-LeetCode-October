/*
 Question - Insert into a Binary Search Tree
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/559/week-1-october-1st-october-7th/3485/
 */

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { self.val = 0; self.left = nil; self.right= nil; }
  public init(_ val: Int) { self.val = val; self.left =nil; self.right = nil; }
  public init(_ val: Int, _ left: TreeNode?, _ right:TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}

class Solution {
  func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let node = root else { return TreeNode(val) }
    if val < node.val {
      node.left = insertIntoBST(node.left, val)
    } else {
      node.right  = insertIntoBST(node.right, val)
    }
    return node
  }
}
