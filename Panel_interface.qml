import QtQuick 2.12

Panel_interfaceForm{
    id: _panel_zapisz

    Component
    {
        id: elementZapisz

        Rectangle
        {
            id: kwadrat_zapisz;
            width: 2*text_kwadrat_Zapisz.width
            height: 2*text_kwadrat_Zapisz.height
            color: _color_background

            Text
            {
               id: text_kwadrat_Zapisz
               text: value
               color: _color
               anchors.centerIn: kwadrat_zapisz
           }
       }
    }
}
