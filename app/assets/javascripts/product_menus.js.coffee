$.MakeEasier.controller 'product_menus', ->
  $.MakeEasier.setupAndBindToAjax 'form#product-menu-form', $.fn.validate
  $.MakeEasier.setupAndBindToAjax 'form#category-form', $.fn.validate
  $.MakeEasier.setupAndBindToAjax 'form#menu-item-form', ->
    @find('#product_menu_item_image').pixelFileInput
      placeholder: 'Product image...'
    @validate()
    return
