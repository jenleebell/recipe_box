require('spec_helper')

describe(Amount) do
  it('converts the amount to lowercase') do
    test_amount = Amount.create({:amount => "1/2 TABLESPOON"})
    expect(test_amount.amount()).to(eq("1/2 tablespoon"))
  end
end
