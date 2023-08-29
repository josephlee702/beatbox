class BeatBox
  attr_reader :list, :head

  def initialize
    @list = LinkedList.new
    @head = nil
  end

  def append(data)
    #this splits our string up into an array with three string elements
    array = data.split
    #must call class method on an object of that class
    array.each {|element| list.append(element)}
  end

  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r 200 -v Hysterical #{beats}`
  end
end
