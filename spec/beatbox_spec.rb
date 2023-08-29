require '../lib/beatbox.rb'
require '../lib/linked_list.rb'
require '../lib/node.rb'

RSpec.describe BeatBox do
  it 'check if bb is an instance of beatbox' do
  bb = BeatBox.new

    expect(bb).to be_instance_of(BeatBox)
  end

  it 'bb.list is instance of LinkedList' do
    bb = BeatBox.new

    expect(bb.list).to be_instance_of(LinkedList)
  end

  it 'head of bb is nil' do
    bb = BeatBox.new

    expect(bb.list.head).to eq(nil)
  end

  it 'appends strings' do
    bb = BeatBox.new
    bb.append('deep doo ditt')

    expect(bb.list.to_string).to eq('deep doo ditt')
  end

  it 'returns data of first node' do
    bb = BeatBox.new
    bb.append('deep doo ditt')

    expect(bb.list.to_string).to eq('deep doo ditt')
    expect(bb.list.head.data).to eq('deep')
  end

  it 'returns data of second node' do
    bb = BeatBox.new
    bb.append('deep doo ditt')

    expect(bb.list.to_string).to eq('deep doo ditt')
    expect(bb.list.head.next_node.data).to eq('doo')
  end

  it 'appends more nodes to our list' do
    bb = BeatBox.new
    bb.append('deep doo ditt')
    bb.append("woo hoo shu")
    
    expect(bb.list.to_string).to eq('deep doo ditt woo hoo shu')
    expect(bb.list.head.next_node.data).to eq('doo')
  end

  it 'counts how many nodes are in the list' do
    bb = BeatBox.new
    bb.append('deep doo ditt')
    bb.append("woo hoo shu")

    expect(bb.list.to_string).to eq('deep doo ditt woo hoo shu')
    expect(bb.count).to eq(6)
  end

  it 'plays the Beat' do
    bb = BeatBox.new
    bb.append('deep doo ditt')
    bb.append("woo hoo shu")
    bb.play
  end
end
