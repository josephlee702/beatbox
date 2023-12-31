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

  def count
    counter = 0
    current_node = @head
    if @head.nil?
      counter
    else # head=/=nil
      counter += 1
      until current_node.next_node.nil?
        counter += 1
        current_node = current_node.next_node
      end
      counter
    end
  end

  def to_string
    str = ''
    current_node = @head
    if @head.nil?
      str
    else 
      str += current_node.data
      until current_node.next_node.nil?
        current_node = current_node.next_node
        str += ' ' + current_node.data
      end
      str
    end
  end

  def prepend(data)
    new_node = Node.new(data)
    if @head.nil?
       @head = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def insert(position, data)
    counter = 0
    new_node = Node.new(data)
    current_node = @head
    prev_node = @head

    if position <= count 
      until counter == position
          counter += 1
          current_node = current_node.next_node
      end
      counter = 0
      until counter == (position-1)
        counter += 1
        prev_node = prev_node.next_node
      end
      prev_node.next_node = new_node
      new_node.next_node = current_node
    else
      puts "Error, can't insert at position #{position} in a list of size #{count}"
    end
  end

  def find(position, length)
    str = ''
    counter = 1
    current_node = @head
    if @head.nil?
      p 'error, nothing in list'
    else
      until counter > position+length
        str += "#{current_node.data} " if counter > position
        current_node = current_node.next_node
        counter += 1
        end
        str.strip
      end
    end

  def includes?(str)
      current_node = @head
    if @head.nil?
      p 'error, there is nothing in the list'
    else
      until current_node.data == str
      return false
      current_node = current_node.next_node
      end
      true
    end
  end

  def pop
    return if @head == nil
    #have to set current_node = 2nd to last node, then make current_node.next_node = nil
    garbage_bin = ''

    if @head.next_node.nil?
      #first we want to take the head's data, insert into garbagebin, then eliminate the head node.
      garbage_bin += @head.data
      @head = nil
    else
      current_node = @head
      #you can refer to the current node, and the node that is right after
      until current_node.next_node.next_node.nil? 
        current_node = current_node.next_node
      end
      garbage_bin += current_node.next_node.data
      current_node.next_node = nil
    end
    garbage_bin
    end
  end