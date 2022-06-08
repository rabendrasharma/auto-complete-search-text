// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){
    $("#autocomplete").keyup(function(){
      var text = this.value
      if (text.length >= 2 ) {
       $.ajax({
          type: "get",
          url: "/films/auto_complete/",
          data: { search: text },
          success: function(response) {
            show_data(response)
          }
        });
      }
    });
    function show_data(tags) {
       $( "#autocomplete" ).autocomplete({
        source: tags
      });
    }
  });

