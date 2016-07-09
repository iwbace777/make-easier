$.MakeEasier.controller 'contacts', ->
  $.MakeEasier.setupAndBindToAjax 'form#contact-us-menu-form', $.fn.validate
  $.MakeEasier.setupAndBindToAjax 'form#new_contact_location', ->
    @find('#contact_location_image').pixelFileInput
      placeholder: 'Location image...'
    @validate()
    return