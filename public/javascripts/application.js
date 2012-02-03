// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function() {
  jQuery("#url").validate({
	errorElement:'div',
	rules: {
		"testurl[url]": {
      required: true,
      url: true
    }
		},
	messages: {
		"testurl[url]":{
								required: "Please enter url",
                        url: "Please enter valid url"
			}
		}
	});
});

