class BeatBox
  attr_reader :list, :head

  def initialize
    @list = LinkedList.new
    @head = nil
  end
end