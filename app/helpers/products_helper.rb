module ProductsHelper

  def carrierwave_image(item)
    if item.is_front_cover?
      image_tag(item.image_url(:medium)) if item.image?
    else
      image_tag(item.image_url(:thumb)) if item.image?
    end
  end

  def product_country(item)
    case item.country_id
    when 1
      return "Japan"
    when 2
      return "Korea"
    when 3
      return "US"
    end
  end

  def render_product_front_photo(product)
    image_tag(product.front_cover_photo.image_url)
  end
end
