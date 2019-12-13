import QtQuick 2.12

Panel_rightForm {
id : choice


    Component
    {
        id: elementInputer

        Row
        {
            id : row_elementInputer
            height: backgrand_elementInputer.height * (0.5 *_up+1)
            width: backgrand_elementInputer.width

            Rectangle
            {
                id: backgrand_elementInputer
                width: _in * 300
                height: 1.2*value_elementInputer.height * (0.5 *_in+1)
                color: _color
                anchors.top: row_elementInputer.top
                MouseArea{
                    anchors.fill: backgrand_elementInputer
                    onClicked: {
                         console.log("kliknięcie w pole " + value)
                    }

                }

                Text
                {
                    id : value_elementInputer
                    x: backgrand_elementInputer.x+10;
                    text: value
                    color: _color_text
                    font.pointSize: _Size_text
                    font.family: _Family_text
                    anchors.verticalCenter: backgrand_elementInputer.verticalCenter
               }
            }
        }
    }
}
