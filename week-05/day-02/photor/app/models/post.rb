class Post < ActiveRecord::Base
  has_attached_file :photo, styles: {
    thumb: '150x150>',
    large: '640x'
  }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
