import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
ViewFormularz {

    Rectangle
    {
        Layout.fillHeight: true
        Layout.fillWidth: true
        color: "white"

        Device
        {
            anchors.fill: parent
        }
    }


    ScrollView
    {
        Layout.fillHeight: true
        Layout.fillWidth: true

        Inputer
        {
            anchors.fill: parent
        }
    }

}
