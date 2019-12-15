import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
Grid{
    property int size: row_layout_device.height
    property int sizeElement: row_layout_device.rows*row_layout_device.height
   id: row_layout_device
   width: 300;
   height: 300;
  // property alias listView_Device: listView_Device
  // anchors.leftMargin: 10
    rows:40
    columns: 1
        ListModel{
                id: listmodel_Device
                ListElement{
                    address: "123.20.90"
                    name: "Lampa"
                    image_1: "globe-solid.svg"
                    image_2: "pen-solid.svg"
                }
                ListElement{
                    address: "123.20.90"
                    name: "Lampa"
                    image_1: "globe-solid.svg"
                     image_2: "pen-solid.svg"
                }
                ListElement{
                    address: "123.20.90"
                    name: "Lampa"
                    image_1: "globe-solid.svg"
                    image_2: "pen-solid.svg"
                }
                ListElement{
                    address:"" //"123.20.90"
                    name:"" //"Lampa"
                    image_1:"" //"globe-solid.svg"
                    image_2:""// "pen-solid.svg"
                }
                ListElement{
                    address:"" //"123.20.90"
                    name:"" //"Lampa"
                    image_1:"" //"globe-solid.svg"
                    image_2:""// "pen-solid.svg"
                }
                ListElement{
                    address:"" //"123.20.90"
                    name:"" //"Lampa"
                    image_1:"" //"globe-solid.svg"
                    image_2:""// "pen-solid.svg"
                }
                ListElement{
                    address:"" //"123.20.90"
                    name:"" //"Lampa"
                    image_1:"" //"globe-solid.svg"
                    image_2:""// "pen-solid.svg"
                }
                ListElement{
                    address:"" //"123.20.90"
                    name:"" //"Lampa"
                    image_1:"" //"globe-solid.svg"
                    image_2:""// "pen-solid.svg"
                }
                ListElement{
                    address:"" //"123.20.90"
                    name:"" //"Lampa"
                    image_1:"" //"globe-solid.svg"
                    image_2:""// "pen-solid.svg"
                }
        }


        ListView{
                id: listView_Device
                model: listmodel_Device
                delegate: element_device
                anchors.fill: row_layout_device

        }
}

