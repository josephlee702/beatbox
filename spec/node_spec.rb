require '../lib/node'

RSpec.describe Node do
  it "instantiates a new Node object" do
    node = Node.new("plop")
    
    expect(node).to be_instance_of Node
    expect(node.data).to eq("plop")
    expect(node.next_node).to eq(nil)
  end
end



# git branch - shows current branch and local branches
# git branch -r - remote branches
# git branch -a - all branches
# git checkout -b feature/name-of-branch - create new branch, switch to branch
# git checkout name-of-branch - change branches
# git fetch - gives list of all remote branches (query command)
# git merge - combines remote branch to local branch
# git pull - combines git fetch and git merge
# git push origin feature/even-better-branch - push local changes to specified branch