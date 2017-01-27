class Product < ApplicationRecord

  before_save :calculate_results
  belongs_to :category	
  def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%")
	  else
	    all
	  end
  end

  def calculate_results
    unless self.actual_price.blank? || self.dis_price.blank?
        self.dis_per = ((self.actual_price - self.dis_price)/self.dis_price) * 100
         
    end
end
 
  mount_uploader :avatar, AvatarUploader
end
