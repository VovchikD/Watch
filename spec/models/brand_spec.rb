require 'rails_helper'

RSpec.describe Brand, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
end
