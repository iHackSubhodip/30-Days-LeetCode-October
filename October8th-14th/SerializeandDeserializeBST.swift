/*
 Question - Serialize and Deserialize BST
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/560/week-2-october-8th-october-14th/3489/
 */

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }
}


class Codec {
  func serialize(_ root: TreeNode?) -> String {
    guard let root = root else { return "" }
    
    var result = ""
    var stack = [TreeNode]()
    stack.append(root)
    
    while !stack.isEmpty {
      let node = stack.popLast()!
      result += "\(node.val) "
      
      if let right = node.right { stack.append(right) }
      if let left = node.left { stack.append(left) }
    }
    
    return result
  }
  
  // Decodes your encoded data to tree.
  func deserialize(_ data: String) -> TreeNode? {
    if data.isEmpty { return nil }
    
    let vals = data.components(separatedBy: " ").dropLast()
    var root = TreeNode(Int(vals.first!)!)
    var stack = [TreeNode]()
    stack.append(root)
    
    for val in vals.dropFirst() {
      let val = Int(val)!
      var parent = stack.last!
      let nextNode = TreeNode(val)
      
      if val < parent.val { // next node is the left child
        parent.left = nextNode
      } else { // nextnode is a right child of either this "parent" or its ancestor
        while !stack.isEmpty && stack.last!.val < val {
          parent = stack.popLast()!
        }
        parent.right = nextNode
      }
      stack.append(nextNode) // due to preorder, "nextNode" is a root of a sub-tree, append it
    }
    
    return root
  }
}
