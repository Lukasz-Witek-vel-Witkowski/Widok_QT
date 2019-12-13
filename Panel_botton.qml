import QtQuick 2.12
Panel_bottonForm{
    id: _panel_botton_

    Component
    {
        id: elementButton

        Rectangle
        {
            id: kwadrat;
            width: 1.2*text_kwadrat.width
            height: 1.2*text_kwadrat.height
            radius: 25
            color: _color_background

           Text
           {
               id: text_kwadrat
               text: value
               color: _color
               anchors.centerIn: kwadrat
               MouseArea{
                   anchors.fill: text_kwadrat
                   onClicked: {
                        console.log("kliknięcie w przycisck " + value)
                   }

               }
            }
        }
    }
}
