import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


DeviceFormularz {

    Component
    {
        id: element

        RowLayout
        {
            Layout.fillHeight: true
            width: parent.width
            spacing: 10
            anchors.bottomMargin: 20

            Item
            {
                id: item_position
                Layout.alignment: Qt.AlignCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                height: glob.height*2

                Image
                {
                    id: glob
                    source: image_1
                    width:  addres_label.height*1.2
                    height: addres_label.height*1.2
                    anchors.verticalCenter:  colum_label.verticalCenter
                    anchors.left: item_position.left
                    anchors.margins: 5
                }

                ColumnLayout
                {
                    id:colum_label
                    anchors.left: glob.right
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter

                    Label
                    {
                        id: addres_label
                        text: address
                        font.pointSize: 12
                    }

                    Label
                    {
                        id: name_label
                        text: name
                        font.pointSize: 8
                    }
                }

                RoundButton
                {
                    id: bottom_image
                    anchors.right:  parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 5
                    radius: 0

                    palette
                    {
                        button: "white"
                    }

                    Image
                    {
                        id: pen
                        source: image_2
                        width: glob.width
                        height: glob.height
                        anchors.centerIn: parent
                    }

                    onClicked:
                    {
                        console.log("Klikniecie na dlugopis")
                    }
                }
            }
        }
    }
    model: DeviceModel {}
    delegate:element
}
