/// <reference path="../Scripts/jquery-1.7.1.min.js" />

var buildUL = function(parent, items) {
    $.each(items, function() {
        if (this.label) {            
            var li = $("<li>" + this.label + "</li>");
            li.appendTo(parent);            
            if (this.items && this.items.length > 0) {
                var ul = $("<ul></ul>");
                ul.appendTo(li);
                buildUL(ul, this.items);
            }
        }
    });
};

var buildMenu = function () {
    var source = [];
    var items = [];

    for (var i = 0; i < data.length; i++) {
        var item = data[i];
        var label = item.text;
        var parentid = item.parentid;
        var id = item.id;

        if (items[parentid]) {
            var item2 = { parentid: parentid, label: label, item: item };
            if (!items[parentid].items) {
                items[parentid].items = [];
            }
            items[parentid].items[items[parentid].items.length] = item2;
            items[id] = item2;
        } else {
            items[id] = { parentid: parentid, label: label, item: item };
            source[id] = items[id];
        }
    }
    return source;
};

var data = [
    {
        "text": "Home",
        "id": "1",
        "parentid": "-1"
    }, {
        "id": "2",
        "parentid": "-1",
        "text": "Nuovo Viaggio"
    }, {
        "id": "3",
        "parentid": "-1",
        "text": "Domande"
    }, {
        "id": "4",
        "parentid": "-1",
        "text": "Esperienze"
    }, {
        "id": "5",
        "parentid": "-1",
        "text": "Idee"
    }, {
        "id": "6",
        "text": "Offerte",
        "parentid": "-1"
    }, {
        "id": "7",
        "parentid": "-1",
        "text": "Agenti"
    }, {
        "id": "8",
        "text": "Rubriche",
        "parentid": "-1"
    }, {
        "id": "9",
        "text": "Cataloghi",
        "parentid": "-1"
    }, {
        "id": "10",
        "text": "Speciali",
        "parentid": "-1"
    }, {
        "id": "11",
        "text": "Community",
        "parentid": "-1"
    }, {
        "id": "12",
        "text": "Mercato",
        "parentid": "-1"
    }, {
        "id": "13",
        "text": "Domande Aperte",
        "parentid": "3"
    }, {
        "id": "15",
        "text": "Domande Risolte",
        "parentid": "3"
    }];