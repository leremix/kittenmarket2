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
//= require turbolinks
//= require jquery3
//=require toastr
//= require_tree .

toastr.options = {
  "positionClass": "toast-bottom-right"
}


function initElement(){


	var quantity = parseInt(document.getElementById('quantity').innerHTML);

	var modif_quantity = document.getElementById('modif_quantity');

	modif_quantity.onclick = showAlert();

	var tamere = document.getElementById('tamere');

	tamere.style.backgroundColor = '#545454 ' ;

}

function tamere() {
	var tamere = document.getElementById('tamere');

	tamere.style.backgroundColor = '#545454 ' ;
}
