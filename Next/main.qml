import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import "Window_edit"
ApplicationWindow
{
    id: mainwindows
    visible: true
    width: 800
    height: 400
    title: qsTr("Skonfiguruj urządzenia")

    function onMessag(addres, name, id)
    {
        edit_window.setSource("Window_edit/Window_edit.qml",
                              {"tf_name.text":name,
                                  "tf_address.text":addres,
                                  "id":id });
    }

    background: Rectangle
    {
        anchors.fill: parent

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

    header: RowLayout
    {

        Button
        {
            text: qsTr("X")
            font.pointSize: 20
            flat: true
            onClicked:
            {
                Qt.quit()
            }
        }
        Item {
            id: name
            Layout.fillWidth: true
        }
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

    Loader
    {
        id: edit_window
        active: true
    }
}
