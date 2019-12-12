import QtQuick 2.12


GridView
{
    id : _element_Zapisz
    delegate: elementZapisz
    width: 30
    height: 30
    model: ListModel
    {
        id: zapisz
        dynamicRoles: false

        ListElement
        {
            _color: "WHITE"
            _color_background: "Lightgreen"
            value: "Zapisz v"
       }
    }
}

