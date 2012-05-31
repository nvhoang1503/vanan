# == Schema Information
#
# Table name: contacts
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  address     :string(255)
#  phone       :string(255)
#  email       :string(255)
#  title       :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Contact < ActiveRecord::Base
  attr_accessible :address, :description, :email, :name, :phone, :title

  # ============================= VALIDATIONS ===============================
  validates :address , :description , :presence => true

end
