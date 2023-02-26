require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    # your code here
    # node = self.head
    # node.next_node = nil
    # return if @head == nil && @tail == nil || @head == @tail
    # node = self.tail.prev_node
    # prev = self.tail
    # self.head = prev
    # self.head.prev_node = nil
    # prev.next_node = node
    # while node
    #   # reverse order
    #   node.next_node = node.prev_node
    #   # set new order
    #   node.prev_node = prev
    #   # advance to next node
    #   prev = node 
    #   node = node.next_node
    # end
    # # while ends when node == nil, prev is final entry
    # self.tail = prev
    return if @head == nil && @tail == nil || @head == @tail

    node = self.tail
    prev = nil
    self.head = node
    # self.head.prev_node = nil
    # prev.next_node = node
    while node
      # reverse order
      node.next_node = node.prev_node
      # set new order
      node.prev_node = prev
      # advance to next node
      prev = node 
      node = node.next_node
    end
    # while ends when node == nil, prev is final entry
    self.tail = prev

  end

end
