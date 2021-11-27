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
    cur_user?
  end

  def destroy?
    cur_user?
  end

  def cur_user?
    record.user == user

  end
end

