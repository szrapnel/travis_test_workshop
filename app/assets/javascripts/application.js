//= require jquery
//= require jquery_ujs
//= require_tree .

$( document ).ready(function() {
    $(".subitem-hover").click(function() {
  		item_click_redirect(this)
  	})
});

function item_click_redirect(item) {
	if(item.dataset['link']!=null) {
		var address=item.dataset['link']
		window.location=address;
	}
}

