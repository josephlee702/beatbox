require '../lib/node.rb'
require '../lib/linked_list.rb'

RSpec.describe LinkedList do
  describe '#head' do
    it "instantiates a new LinkedList object" do
      list = LinkedList.new
    
      expect(list).to be_instance_of LinkedList
      expect(list.head).to eq(nil)
    end
  end

  describe '#append' do
    it "adds new piece of data to the list" do
      list = LinkedList.new
      list.append("doop")

      expect(list.head.data).to eq("doop")
      expect(list.head.next_node).to eq(nil)
      expect(list.head).to be_instance_of(Node)
    end
  end

  describe '#count' do
    it "tells us how many things are in the list" do
      list = LinkedList.new
      list.append('doop')
      list.append(' deep')

      expect(list.count).to eq(2)
    end
  end

  describe '#to_string' do
    it 'generates a string of all the items in the list, separated by spaces' do
      list = LinkedList.new
      list.append('doop')
      list.append('deep')

      expect(list.to_string).to eq('doop deep')
    end
  end

  describe '#prepend' do
    it 'prepends words to our list' do
      list = LinkedList.new
      list.append('plop')
      list.append('suu')
      list.prepend('dop')

      expect(list.count).to eq(3)
    end
  end

  describe '#insert' do
    it 'adds a new node into the linked list' do
      list = LinkedList.new
      list.append('plop')
      list.append('suu')
      list.prepend('dop')
      list.insert(1, 'woo')

      expect(list.to_string).to eq('dop woo plop suu')
      expect(list.count).to eq(4)
    end
  end

  describe '#insert errors' do
    it '#doesnt insert and throws error' do
      list = LinkedList.new
      list.append('plop')
      list.append('suu')
      list.prepend('dop')
      list.insert(5, 'woo')

      expect {list.insert(5, 'woo').to output("Error, can't insert at position 5 in a list of size 5")}
    end
  end
end
