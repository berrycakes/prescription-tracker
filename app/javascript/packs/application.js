//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from '@rails/ujs'
import Turbolinks from 'turbolinks'
import * as ActiveStorage from '@rails/activestorage'
import 'channels'

Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(document).on('turbolinks:load', function () {
  $('form').on('click', '.add_fields', function (event) {
    let regexp, time, table, newRow
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    table = $('.fields')
    newRow = $(this).data('fields').replace(regexp, time)
    table.append(newRow)
    $('.fields tr:last-child').addClass('new_field')
    return event.preventDefault()
  })

  $('form').on('click', '.remove_record', function (event) {
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('tr').hide()
    return event.preventDefault()
  })
})
