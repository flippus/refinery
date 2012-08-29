jQuery ->
  $(document).ready( ->
    $("a#new_location").click( ->
      $("div#new_location").show()
      $("div#location_select").hide()
      $('#location_selection').val("1")
    )
  )

jQuery ->
  $(document).ready( ->
    $("a#location_select").click( ->
      $("div#location_select").show()
      $("div#new_location").hide()
      $('#location_selection').val("0")
    )
  )