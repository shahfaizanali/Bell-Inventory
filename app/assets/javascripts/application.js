// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require admin/bootstrap.min
//= require jquery.validate
//= require jquery.validate.additional-methods
//= require admin/menus
//= require admin/store_details
//= require admin/online_store_information
//= require admin/delivery_details
//= require admin/jquery.ptTimeSelect
//= require_tree .


$.fn.serializeObject = function() {
    var o = Object.create(null),
            elementMapper = function(element) {
                element.name = $.camelCase(element.name);
                return element;
            },
            appendToResult = function(i, element) {
                var node = o[element.name];

                if ('undefined' != typeof node && node !== null) {
                    o[element.name] = node.push ? node.push(element.value) : [node, element.value];
                } else {
                    o[element.name] = element.value;
                }
            };

    $.each($.map(this.serializeArray(), elementMapper), appendToResult);
    return o;
};
function add_fields(link, association, content) {
    var new_id = new Date().getTime();
    var regexp = new RegExp("new_" + association, "g");
    $("#qwe").append(content.replace(regexp, new_id));
}
function remove_fields(link) {
    $(link).prev("input[type=hidden]").val("1");
    alert("called");
    $(link).parent().hide();
}

$(document).bind('click', function(e)
{
    if (!($(e.target).is("label")) && !($(e.target).is("span")))
    {
        $(".three-col-box-popup.absolute").fadeOut(500);
        $(".menu-view-product-popup").fadeOut(500);
    }
});
