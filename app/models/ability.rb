class Ability
  include CanCan::Ability
  def initialize(user)
    if user && # method for user has administrative rights
      can :access, :rails_admin
      can :manage, [ #Parent Application models
                    ::Piggybak::Variant,
                    ::Piggybak::ShippingMethod,
                    ::Piggybak::PaymentMethod,
                    ::Piggybak::TaxMethod,
                    ::Piggybak::State,
                    ::Piggybak::Country]

      # can't delete orders
      can [:email, :download, :cancel, :read, :create, :update, :history, :export], ::Piggybak::Order

      can :refund, ::Piggybak::Payment
    end
  end
end