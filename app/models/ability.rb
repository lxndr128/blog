class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Post, user: user
    can :manage, Subscription, subscriber: user
  end
end