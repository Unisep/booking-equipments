require 'rails_helper'

RSpec.describe Booking, type: :model do
  xcontext 'associations' do
    it { is_expected.to belong_to(:hardware) }
  end

  xcontext 'model validations'

  xcontext 'table fields' do
    it { is_expected.to have_db_column(:book_at).of_type(:datetime) }
    it { is_expected.to have_db_column(:hardware_id).of_type(:integer) }
    it { is_expected.to have_db_column(:ending_book_at).of_type(:datetime) }
  end
end
