class Ability
  include CanCan::Ability

  def initialize(session)
    can :read, Document
  end
end