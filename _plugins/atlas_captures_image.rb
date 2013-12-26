require 'rubygems'
require 'rmagick'

require_relative 'atlas_captures'

module AtlasCaptures

  class AtlasCapturesImage

    attr_reader :file, :image

    def initialize(image)
      @file = Magick::Image.read(image)
      @image = image
    end

    def filename
      AtlasCaptures::filename(image)
    end

    def resize
      file.thumbnail(
        i.columns*0.06,
        i.rows*0.06
        ).write("#{filename}-thumb.jpg")
    end
  end

end