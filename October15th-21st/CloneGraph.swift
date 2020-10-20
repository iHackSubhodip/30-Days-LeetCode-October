/*
 Question - Clone Graph
 Link - > https://leetcode.com/explore/featured/card/october-leetcoding-challenge/561/week-3-october-15th-october-21st/3501/
 */

public class Node {
  public var val: Int
  public var neighbors: [Node?]
  public init(_ val: Int) {
    self.val = val
    self.neighbors = []
  }
}


class Solution {
  func cloneGraph(_ node: Node?) -> Node? {
    var map = [Int: Node]()
    return dfs(node, &map)
  }
  
  func dfs(_ node: Node?,_ map: inout [Int: Node]) -> Node?{
    guard let node = node else { return nil }
    if map.keys.contains(node.val){ return map[node.val] }
    var clone = Node(node.val)
    map[clone.val] = clone
    for neighbor in node.neighbors{
      if let node = dfs(neighbor, &map){
        clone.neighbors.append(node)
      }
    }
    return clone
  }
  // O(n), O(n)
}
