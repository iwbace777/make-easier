$.MakeEasier.controller 'coupons', ->
  $.MakeEasier.setupAndBindToAjax 'form#coupons-menu-form', $.fn.validate
  $.MakeEasier.setupAndBindToAjax 'form#new_coupon_info', ->
    @find('#expiry-date-input').datepicker
      format: 'yyyy-mm-dd'
      startDate: '0d'
      todayBtn: true
    @find('#coupon_info_image').pixelFileInput
      placeholder: 'Coupon image...'
    @validate()
    return
  return
