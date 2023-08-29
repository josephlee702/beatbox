require '../lib/beatbox.rb'
require '../lib/linked_list.rb'
require '../lib/node.rb'

RSpec.describe BeatBox do
  it 'check if bb is an instance of beatbox' do

    bb = BeatBox.new

    expect(bb).to be_instance_of(BeatBox)
  end
end