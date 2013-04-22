class Announcement < ActiveRecord::Base
  attr_accessible :title, :body

  searchable do
    text :title, :body
  end
end
