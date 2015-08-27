class Amount < ActiveRecord::Base
  belongs_to(:ingredient)
  belongs_to(:recipe)
  before_save(:downcase_quantity)

  private

  define_method(:downcase_quantity) do
    if self.quantity() != nil
      self.quantity=(quantity().downcase())
    end
  end
end
