module HamlHelper
	def haml_title(title)
	  haml_tag('div.panel-heading', ) do
	    haml_tag('h3.panel-title', title)
	  end
	end

	def haml_item_list(list, empty_message, partial=nil)
	  if list.empty?
	    haml_tag('p', empty_message)
	  else
	    if partial==nil
	      haml_tag('p', render(list))
	    else
	      haml_tag('p', render(:partial=>partial, :collection=> list))
	    end
	  end
	end

	def haml_partial(title, partial)
	  haml_tag('div.panel.panel-primary') do 
	    haml_title(title)
	    haml_tag('div.panel-body-primary') do
	      haml_tag('p', render(partial))
	    end
	  end
	end
end
