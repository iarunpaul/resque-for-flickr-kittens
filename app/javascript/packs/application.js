// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

// import "jquery"// no explicit import required
import "bulma"
import "../stylesheets/style.scss"
Rails.start()
Turbolinks.start()
ActiveStorage.start()

// $(document).on('turbolinks:load', function(){
//   alert("Javascript Works");
// }) //Test to checck if jquery works; comment out after test
setTimeout(function () {
  $('#flash').remove();
}, 5000);