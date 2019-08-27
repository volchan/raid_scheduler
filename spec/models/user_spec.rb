# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  failed_attempts        :integer          default(0), not null
#  firstname              :string           default(""), not null
#  jti                    :string           not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  lastname               :string           default(""), not null
#  locked_at              :datetime
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(create(:user)).to be_valid
  end

  # Validations
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_length_of(:email).is_at_most(255) }
  it { is_expected.to allow_value('email@address.foo').for(:email) }
  it { is_expected.to allow_value('email+1@address.foo').for(:email) }
  it { is_expected.to_not allow_value('email').for(:email) }
  it { is_expected.to_not allow_value('email@domain').for(:email) }
  it { is_expected.to_not allow_value('email@domain.').for(:email) }
  it { is_expected.to_not allow_value('email@domain.a').for(:email) }

  # Concern
  it 'returns a jwt token' do
    subject { build(:user) }
    expect(subject.token).to be_a(String)
  end

  # # Callbacks
  # describe '#setup_new_user' do
  #   let(:user) { build(:user) }
  #   it 'checks callback' do
  #   end
  # end

  # # Methods
  # describe '#method' do
  # end
end
