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
