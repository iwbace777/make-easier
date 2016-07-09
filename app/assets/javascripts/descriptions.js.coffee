$.MakeEasier.controller 'descriptions', ->
  $.MakeEasier.setupAndBindToAjax 'form#ios-form', $.fn.validate
  $.MakeEasier.setupAndBindToAjax 'form#android-form', $.fn.validate
  return