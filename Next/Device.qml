import QtQuick 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

DeviceFormularz {

    anchors.fill: parent;

    Component
    {
        id: element
        RowLayout
        {
            spacing: 10

            Image
            {
                id: glob
                source: image_1
                sourceSize.height:  addres_label.height*1.2
                sourceSize.width:   addres_label.height*1.2
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.leftMargin: 10
            }

            ColumnLayout
            {
                id:colum_label
                Layout.fillWidth: true

                Connections
                {
                    target: edit_window.item
                    onMessage:
                    {
                        if(index == _id){
                            address = _address
                            name = _name
                            image_1 = icon
                        }
                    }

                }

                Label
                {
                    id: addres_label
                    text: address
                    Layout.preferredWidth: 196//216
                    Layout.fillWidth: true
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
                radius: 0
                flat: true
                Layout.alignment: Qt.AlignRight
                Layout.rightMargin: 10

                Image
                {
                    id: pen
                    source: image_2
                    width: glob.width
                    height: glob.height
                    anchors.centerIn: parent
                }

                signal send( string person)

                onClicked:
                {
                    mainwindows.onMessag(address, name, index)
                }
            }
        }
    }
    model: DeviceModel {}
    delegate: element
}
