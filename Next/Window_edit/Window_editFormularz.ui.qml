import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Dialogs 1.2
Dialog
{
    visible:  true
    title:  "Edytuj urządzenie"
    standardButtons: StandardButton.Save | StandardButton.Cancel
    property alias tf_address: tf_address
    property alias tf_name: tf_name
    property alias id: iteam.x
    property alias combo: combo
    signal message(string _address, string _name, string _id, string icon)

    Item
    {
        id: iteam
    }

    ColumnLayout
    {
        anchors.centerIn: parent

        Label
        {
            text: qsTr("Edytowanie")
            font.pointSize: 20
            font.bold: true
        }

        Label
        {
            text: qsTr("Wybór urządzeń: ")

        }

        TypeDevice{
            id: combo
            Layout.fillWidth: true
        }


        Label
        {
            text: qsTr("IP: ")

        }

        TextField
        {
            id: tf_address

        }

        Label
        {
            text: qsTr("Nazwa uzrądzenia")

        }

        TextField
        {
            id: tf_name
        }

    }

}


