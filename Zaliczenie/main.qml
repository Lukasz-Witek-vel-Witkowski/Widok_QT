import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
ApplicationWindow {
    visible: true
    width: 800
    height: 480
    title: qsTr("Skonfiguruj urządzenia")
    id: mainWindows
    background: Rectangle
    {
        gradient: Gradient
        {
            GradientStop
            {
                position:  0.0
                color:  "white"
            }
            GradientStop
            {
                position:  0.6
                color:  "lightgrey"
            }
        }
    }

    header:
        ColumnLayout{
        height: 0.1* mainWindows.height
            Label{
                id: item_X
                Text{
                    text: qsTr("X");
                    font.pointSize: 20

                }
                 Layout.alignment: Qt.AlignTop
                 Layout.leftMargin: 10
            }

            Label{
                id: label_text
                Text {
                    id: value_text
                    text: qsTr("Skonfiguruj urządzenia")
                    font.bold: true
                    font.pointSize: 20

                }
               Layout.alignment: Qt.AlignBottom
               Layout.margins: 10

            }

    }

    footer: ScrollView
    {
        id: scrool_view
        width: mainWindows.width
        height: mainWindows.height

        View{
            id: view
            width: mainWindows.width
            height: mainWindows.height
           // anchors.horizontalCenter: mainWindows.horizontalCenter
          //  anchors.verticalCenter: mainWindows.verticalCenter
        }
    }

}
