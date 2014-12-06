module ProductsHelper
  def owner_only_link_to(product, body, url, html_options={})
    if user_signed_in?
      if product.is_owned_by?(current_user)
        link_to body, url, html_options
      end
    end
  end
end
