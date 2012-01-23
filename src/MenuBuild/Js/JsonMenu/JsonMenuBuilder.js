/// <reference path="../Scripts/jquery-1.7.1.min.js" />

var travelPeople = travelPeople || {};

travelPeople.Menu = function () {
};

travelPeople.Menu.prototype = {
    build: function (parent, items) {
        var menu = this;
        $.each(items, function (index, menuItem) {
            if (menuItem.text) {
                var li = $("<li>" + menuItem.text + "</li>");
                li.appendTo(parent);
                if (menuItem.subMenu && menuItem.subMenu.length > 0) {
                    var ul = $("<ul></ul>");
                    ul.appendTo(li);
                    menu.build(ul, menuItem.subMenu);
                }
            }
        });
    }
};

$(document).ready(function () {
    $.getJSON('js/jsonmenu/notloggedmenu.json', function(data) {
        var menuContainerId = "#menuContainer";
        var menuItem = $("<ul></ul>");
        menuItem.appendTo(menuContainerId);
        var tpMenu = new travelPeople.Menu();
        tpMenu.build(menuItem, data);
        $(menuContainerId).jqxMenu({ width: '600', height: '30px' });
    });
});