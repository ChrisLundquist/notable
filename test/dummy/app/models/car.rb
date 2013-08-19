class Car < ActiveRecord::Base
  has_many :notes, :as => :notable, :class_name => "Notable::Note"
end
