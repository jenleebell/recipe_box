class Recipe < ActiveRecord::Base
  has_and_belongs_to_many(:categories)
  validates(:name, {:presence => true, :length => { :maximum => 50}})
  validates(:instructions, :presence => true)
  validates(:rating, {:allow_nil => true, :inclusion => { :in => 1..5}})
  before_save(:capitalize_name)

private

  define_method(:capitalize_name) do
    self.name=(name().split.map {|i| i.capitalize }.join(' '))
  end
end
