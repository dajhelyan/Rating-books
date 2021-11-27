class BookPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def show?
    true
  end

  def create?
    user.present?
  end

  def update?
    record.user == user
  end
end

