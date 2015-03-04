class Flight < ActiveRecord::Base
  belongs_to :airline
  has_one :departure
  has_one :arrival
end
