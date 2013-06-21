class Company < ActiveRecord::Base
  attr_accessible :name, :logo, :title, :description
  validates_presence_of :name

  has_attached_file :logo,
    :use_timestamp => false,
    :path => ":class/:id/:basename/:style.:extension",
    :url  => ":s3_eu_url",
    :styles => {
      :medium => "x145"
    }
end
