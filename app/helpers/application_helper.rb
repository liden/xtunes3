module ApplicationHelper

  def album_cover_file(album)
    @album.cover_file.present? ? (image_tag(album.cover_file_url.to_s, :size => "150x150", :class => "img-polaroid")) : (image_tag("/assets/albumcover.png", :size => "150x150", :class => "img-polaroid"))
  end

end
