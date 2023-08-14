class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Post, user: user
  end
end