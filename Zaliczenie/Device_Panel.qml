import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12
Device_PanelForm{
    id: row_layout_device
    Component{
        id: element_device
     //   property alias element_device: element_device
        RowLayout{
            id: element
            width: 300
            height: Device_PanelForm.size*10
            spacing: 20
            Item{
                id: item_empty_row
               // width: 2
             // Layout.alignment: Qt.AlignTop
            }
            Rectangle{
                id: backgroud_row_leyout
                width: 300
                height:  50
                color: "white"
                anchors.topMargin: 10
               // Layout.alignment: Qt.AlignBottom
                Item{
                    id: item_empty
                   // width: 2
                }

            Image {
                id: glob
                source: image_1
                height: label_address.height*1.1
                width: label_address.height*1.1
                anchors.verticalCenter: label_address.bottom
                anchors.left: item_empty.right
                anchors.leftMargin: 15
                anchors.rightMargin: 15
                //anchors.topMargin: 10
            }
           Label{
               id: label_address
               width: name_label_addres.width*1.1
               height: name_label_addres.height*1.1
               Text {
                   id: name_label_addres
                   text: address
                   font.pointSize: 12
               }
                anchors.left: glob.right
                anchors.leftMargin: 20
                anchors.verticalCenter: parent.verticalCenter
               //  anchors.bottomMargin: 100
            }
           Label{
               id: label_name
               Text{
                text: name
                font.pointSize: 8
               }
               anchors.top: label_address.bottom
               anchors.left: glob.right
               anchors.leftMargin: 20
               // anchors.topMargin: 10
           }
           Image {
               id: pen
               source: image_2
               height: glob.height
               width: glob.width
               anchors.right: parent.right
               anchors.verticalCenter: glob.verticalCenter
              anchors.rightMargin: 20
              // anchors.topMargin: 10
           }
        }
    }
    }
}
