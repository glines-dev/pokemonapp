class Pokemon < ActiveRecord::Base
  attr_accessible :name, :card_number, :type, :weakness, :attack1, :attack2, :power
end
