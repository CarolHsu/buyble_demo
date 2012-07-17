module ProductsHelper

  def carrierwave_image(item)
    if item.is_front_cover?
      image_tag(item.avatar_url(:medium)) if item.avatar?
    else
      image_tag(item.avatar_url(:thumb)) if item.avatar?
    end
  end

end
