# frozen_string_literal: true

class Tree::TreeBehaviourComponent < ViewComponent::Base
  def initialize(tree_manager:)
    @tree_manager = tree_manager
    @display_header = if not @tree_manager.get_title.nil? or not @tree_manager.get_description.nil?; true; else; false; end
  end
end
