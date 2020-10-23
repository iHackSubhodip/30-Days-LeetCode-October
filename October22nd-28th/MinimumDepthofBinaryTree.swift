/*
 Question - Minimum Depth of Binary Tree
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/562/week-4-october-22nd-october-28th/3504/
 */

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { self.val = 0; self.left = nil; self.right = nil; }
  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
  public init(_ val: Int, _ left: TreeNode?, _ right:TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}


class Solution {
  func minDepth(_ root: TreeNode?) -> Int {
    guard let root = root else {
      return 0
    }
    
    if root.left == nil {
      return minDepth(root.right) + 1
    }
    if root.right == nil {
      return minDepth(root.left) + 1
    }
    
    return min(minDepth(root.left), minDepth(root.right)) + 1
  }
}
