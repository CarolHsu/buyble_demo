module ProductsHelper

  def carrierwave_image(item)
    if item.is_front_cover?
      image_tag(item.image_url(:medium)) if item.image?
    else
      image_tag(item.image_url(:thumb)) if item.image?
    end
  end

  def product_country(item)
    if (item.country_id == 1)
      return "Japan"
    elsif (item.country_id == 2)
      return "Korea"
    else
      return "US"
    end
  end

end
