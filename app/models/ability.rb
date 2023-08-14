class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Post, user: user
    can :manage, Subscription, subscriber: user
    can :manage, Comment, user: user
  end
end