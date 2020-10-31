/*
 Question - Recover Binary Search Tree
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/563/week-5-october-29th-october-31st/3514/
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
  var firstElement: TreeNode? = nil
  var secondElement: TreeNode? = nil
  var prevElement = TreeNode(Int.min)
  
  func recoverTree(_ root: TreeNode?) {
    inOrderTraverse(root)
    
    let temp = firstElement!.val
    firstElement!.val = secondElement!.val
    secondElement!.val = temp
  }
  
  func inOrderTraverse(_ root: TreeNode?) {
    if root == nil {
      return
    }
    
    inOrderTraverse(root?.left)
    
    if firstElement == nil && prevElement.val >= root!.val {
      firstElement = prevElement
    }
    
    if firstElement != nil && prevElement.val >= root!.val {
      secondElement = root
    }
    prevElement = root!
    
    inOrderTraverse(root?.right)
  }
}
