import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
RowLayout
{
    id: one
    Layout.fillHeight: true
    Layout.fillWidth: true

   // property alias wIDTH: background_item.width
   // property alias hEIGHT: background_item.height
    Rectangle
    {
        id: background_item
        Layout.fillHeight: true
        Layout.preferredWidth: 300
        color: "white"

        Device
        {
            anchors.fill: background_item
            clip: true
        }
    }

    Inputer
    {
        Layout.fillHeight: true
        Layout.fillWidth: true
    }

}
