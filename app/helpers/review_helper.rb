module ReviewHelper
  def show_rating(review)
    if review==nil
        return
    end
    case review.rating
    when 1, 2
      w='danger'
    when 3
      w='warning'  
    when 4, 5
      w='success'
    else
      w='warning'
    end
    capture_haml do 
        haml_tag('span.label.label-'+w, review.rating)
    end
  end
end
