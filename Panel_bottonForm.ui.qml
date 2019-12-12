import QtQuick 2.12

GridView{
    id : layout_buttons
    delegate: elementButton
    width: 300
    height: 30
    model: ListModel
    {
        id: button_one
        dynamicRoles: false

        ListElement
        {
            _color: "WHITE"
            _color_background: "GREEN"
            value: "NOWA GRUPA"
       }

        ListElement
       {
               _color: "BLACK"
               _color_background: "GREY"
               value: "ISTNIEJĄCA GRUPA"
       }
    }
}

