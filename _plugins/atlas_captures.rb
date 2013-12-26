# Processes all files in the image folder
# Reads EXIF data, creates thumbnails, creates posts

require 'rubygems'
require 'rmagick'

require_relative 'atlas_captures_post'
require_relative 'atlas_captures_image'

module AtlasCaptures

  def commence_build
    Dir.glob("../images/*.jpg") do |file|
      post = AtlasCapturesPost.new(file)
      image = AtlasCapturesImage.new(file)
    end
  end

  def filename(file)
    # proper filename formatting for post and image
  end

end

AtlasCaptures::commence_build