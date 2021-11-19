class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def pending?
    true
  end

  def show?
    record.user == user
  end

  def new?
    create?
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  def update?
    record.user == user || record.pigeon.user_id == user.id
  end
end
