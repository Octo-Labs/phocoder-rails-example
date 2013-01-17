class ImageUploadThumbnail < ActiveRecord::Base

  acts_as_phocodable :parent_class => "ImageUpload" 

end