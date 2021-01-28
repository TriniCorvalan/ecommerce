require 'rails_helper'

RSpec.describe Category, type: :model do
  it "must have only one supracategory" do
    category = Category.reflect_on_association(:supracategory)
    expect(category.macro).to eq(:belongs_to)
  end
end
