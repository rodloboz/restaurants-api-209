class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    user
  end

  def update?
    user_is_owner?
  end

  def destroy?
    user_is_owner?
  end

  private

  def user_is_owner?
    # current_user
    # restaurant.user == current_user
    # in Pundit:
    # record = restaurant
    # user = current_user
    record.user == user
  end
end
