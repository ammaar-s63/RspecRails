# frozen_string_literal: true

class Article < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3, maximum: 30 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  validates :user_id, presence: true
  validates_uniqueness_of :title
end

# Rspec
# Factories

# rails_helper
# rspec_heper

# specs/models/article_spec.rb

# Rspec.describe Article, type: :model do
#   build_stub(:atricle)
#   let(:invalid_article) { create(title: nil) }

#   # Article belongs_to
#   subject {  invalid_article.save }
#   describe '.validation' do
#     context 'with invalid data ' do
#       it 'verifies title presence' do
#         expect(subject.errors).to include('')
#       end
#       it { expect(o).to be(r) }
#       it { expect(o).to be(r) }
#       it { expect(o).to be(r) }
#       it { expect(o).to be(r) }
#       it { expect(o).to be(r) }
#     end

#     context 'context ' do
#     end

#     context 'context ' do
#     end
#   end
#   Article belongs_to

# end
