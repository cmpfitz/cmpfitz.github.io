require_relative 'atlas_captures'

module AtlasCaptures

  class AtlasCapturesPost

    attr_reader :image

    def initialize(image)
      @image = image
    end

    def directory_filename
      "_posts/#{parsed_date}-#{filename}.markdown"
    end

    def filename
      AtlasCaptures::filename(image)
    end

    def date
      # get EXIF data date
      # turn it into a Time object
    end

    def parsed_date_time
      date.strftime("%Y-%m-%d %H:%M:%S")
    end

    def parsed_date
      date.strftime("%Y-%m-%d")
    end

    def header
      spacer = "---\n"
      layout = "layout: post\n"
      title = "title: ''\n"
      date = "date: #{parsed_date_time}\n"
      categories = "categories: ''\n"
      return spacer + layout + title + date + categories + spacer
    end

    def body
      # image and links or something fancy
    end

    def content
      header
    end

    def save_file
      File.open(directory_filename, "w") { |file| file.write(content) }
    end
  end

end