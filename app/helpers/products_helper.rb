module ProductsHelper
  def carrierwave_image(item)
    image_tag(item.avatar_url) if item.avatar?
  end
end
