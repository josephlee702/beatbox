class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      #current_node acts as a "pointer" to which location we are at. simpler when drawn out.
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
      # we are at the end of the list
    end
  end
end