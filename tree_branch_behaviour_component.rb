# frozen_string_literal: true

class Tree::TreeBranchBehaviourComponent < ViewComponent::Base
  def initialize(branch_manager:, data:)
    @data = data
    @branch_manager = branch_manager
    @id_ul = "tree_#{@branch_manager.get_tree_manager.get_tree_name}.#{@branch_manager.get_path}_item".downcase

    while @id_ul.include?(".")
      @id_ul["."] = "_"
    end
    while @id_ul.include?(" ")
      @id_ul[" "] = "_"
    end
  end

end
