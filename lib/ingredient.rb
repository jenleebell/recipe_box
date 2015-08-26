class Ingredient < ActiveRecord::Base
  has_and_belongs_to_many(:recipes)
  validates(:name, :presence => true)
  before_save(:downcase_name)
  before_save(:downcase_amount)

private

  define_method(:downcase_name) do
    self.name=(name().downcase())
  end

  define_method(:downcase_amount) do
    if self.amount() != nil
      self.amount=(amount().downcase())
    end
  end
end
