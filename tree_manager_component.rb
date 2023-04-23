class Tree::TreeManagerComponent < ViewComponent::Base
  def initialize(name, title = nil, description = nil)
    @title = title
    @description = description
    @branches = []
    @display_behaviour = Tree::TreeBehaviourComponent
    @tree_name = name
  end

  def add_branch(branch_manager)
    @branches.append(branch_manager)
  end
  def set_title(title)
    puts "SET TITLE: #{title}"
    @title = title
  end
  def set_description(description)
    puts "SET DESCRIPTION: #{description}"
    @description = description
  end
  def set_display_behaviour(display_behaviour)
    @display_behaviour = display_behaviour
  end

  def render
    @display_behaviour.new(tree_manager: self)
  end

  def get_branches
    @branches
  end
  def get_title
    @title
  end
  def get_description
    @description
  end
  def get_tree_name
    @tree_name
  end
end
