class Ability
  include CanCan::Ability
  
  def initialize(user)

    if user.role?("admin")
      
      can :dashboard
      can :access, :rails_admin
      can [:read, :edit], [:Frame]
      can :manage, [:Image, :Page, :Role, Tag, Symptom, Category, Item, User]
      can :manage, Piggybak.config.manage_classes.map(&:constantize)
      
      Piggybak.config.extra_abilities.each do |extra_ability|
        can extra_ability[:abilities], extra_ability[:class_name].constantize
      end

      if user.role?("user")
        #can :access, :rails_admin
      end
    end
  end
end