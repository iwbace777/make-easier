$.MakeEasier.controller 'customer_feedbacks', ->
  $.MakeEasier.setupAndBindToAjax 'form#customer-feedback-form', $.fn.validate
  $.MakeEasier.setupAndBindToAjax 'form#customer-feedback-info-form', $.fn.validate
  return