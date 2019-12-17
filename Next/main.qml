import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
ApplicationWindow
{
    id: mainwindows
    visible: true
    width: 800
    height: 400
    title: qsTr("Hello World")

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

    header: Label
    {
        text: qsTr("X")
        font.pointSize: 20
    }

    ColumnLayout
    {
        anchors.fill:parent

        Label
        {
            text: qsTr("Skonfiguruj urządzenia")
            font.bold: true
            font.pointSize: 20
            Layout.leftMargin: 10
        }

        View
        {
            Layout.fillHeight: true
            Layout.margins: 20
        }

    }
}
