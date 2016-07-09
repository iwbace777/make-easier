$.MakeEasier =
  setupAndBindToAjax: (selector, setup) ->
    checkAndSetup = ->
      return if !@length || @data 'MakeEasier-initialized'
      @data 'MakeEasier-initialized', true
      setup.call @
      return

    checkAndSetup.call $(selector)

    $(document).on 'ajaxComplete.MakeEasier_controller', (_, jqXHR, o) ->
      if jqXHR.getResponseHeader('Content-Type').match(/text\/javascript/i)
        checkAndSetup.call $(selector)
      return
    return

  controller: (name, js) ->
    selector = ".#{name}"
    $(document).on 'MakeEasier:page_load', ->
      if $(selector).length
        $(document).off 'ajaxComplete.MakeEasier_controller'
        js.call $(selector)
      return
    return