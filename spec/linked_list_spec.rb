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
end