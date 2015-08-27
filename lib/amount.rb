class Amount < ActiveRecord::Base
  belongs_to(:ingredients)
  before_save(:downcase_amount)

  private

  define_method(:downcase_amount) do
    if self.amount() != nil
      self.amount=(amount().downcase())
    end
  end
end
