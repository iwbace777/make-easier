$.MakeEasier.controller 'push_settings', ->
  $.MakeEasier.setupAndBindToAjax '.upload-certificate', ->
    @click ->
      $(@).closest('form').find('#certificate_file').click()
      return false
    return
  $.MakeEasier.setupAndBindToAjax 'input[name="certificate[file]"]', ->
    @change ->
      $(@).closest('form').submit()
      return false
    return
  return
