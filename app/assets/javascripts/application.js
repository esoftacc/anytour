// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require bootstrapValidator.min
//= require fancybox
//= require tinymce
//= require tinymce-jquery
//= require turbolinks
//= require_tree .


// This is call javascripts how use Bootstrap 

tinymce.init({
  mode: 'textareas',
  skin : "o2k7",
  fontsize_formats: "8pt 10pt 12pt 14pt 18pt 24pt 36pt",
  selector : "#wysiwyg",
  theme_advanced_buttons3 : "uploadimage,image",
 });

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

$(function () {
  $('[data-toggle="popover"]').popover()
})

$('.dropdown-toggle').dropdown()

$('[data-toggle="alert"]').alert()
$().alert('close')

$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})

$('.bs-example').carousel({
  interval: 80000
})


// This is call javascripts how use Fancybox poupap 
$(document).ready(function() {
  $(".fancybox").fancybox({
    prevEffect    : 'none',
    nextEffect    : 'none',
    closeBtn    : false,
    helpers   : {
      title : { type : 'inside' },
      buttons : {}
    }
  });
});
