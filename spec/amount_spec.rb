require('spec_helper')

describe(Amount) do
  it('converts the quantity to lowercase') do
    test_amount = Amount.create({:quantity => "1/2 TABLESPOON"})
    expect(test_amount.quantity()).to(eq("1/2 tablespoon"))
  end
end
