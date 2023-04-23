# frozen_string_literal: true

class Tree::TreeBranchBehaviourComponent < ViewComponent::Base
  def initialize(branch_manager:, data:)
    @data = data
    @branch_manager = branch_manager
  end
end
