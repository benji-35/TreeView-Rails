class Tree::TreeBranchManagerComponent < ViewComponent::Base
  def initialize(tree_manager, path, display_behaviour = Tree::TreeBranchBehaviourComponent)
    @tree_manager = tree_manager
    @display_behaviour = display_behaviour
    @path = path
    @data = nil
  end
  def render
    if @tree_manager.nil?
      return Tree::TreeBranchBehaviourComponent.new(branch_manager: self, data: @data)
    end
    @display_behaviour.new(branch_manager: self, data: @data)
  end

  def set_data(data)
    @data = data
  end
  def set_display_behaviour(display_behaviour)
    @display_behaviour = display_behaviour
  end

  def get_date
    @data
  end
  def get_tree_manager
    return @tree_manager
  end
  def get_path
    @path
  end
end