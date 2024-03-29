import QtQuick 2.12
import QtQuick.Window 2.12
PanelForm {
    id : main
    Component {
        id: elementComponent

        Rectangle
        {
            id: rectangel_element
            color: "white"
            width: 250
            height: earth.height*1.5

            Row
            {
                id: element
                anchors.top: rectangel_element.top
                width: rectangel_element.width
                height: rectangel_element.height*0.8

                Column
                {
                    id: col_image

                    Image
                    {
                        id: earth
                        width: 30
                        height: 30
                       source: image_1
                       MouseArea{
                           anchors.fill: earth
                           onClicked: {
                                console.log("kliknięcie w obrazek globusa")
                           }

                       }
                    }
                    anchors.left: element.left
                }

                Column
                {
                    id: col_rows

                    Row
                    {
                        id: host

                        Text
                        {
                            id: text_host
                            text:  name
                            MouseArea{
                                anchors.fill: text_host
                                onClicked: {
                                     console.log("kliknięcie w urządzenie HOST")
                                }
                        }
                        anchors.left: col_rows.left

                        }
                    }

                    Row
                    {
                        id: dev
                        Text
                        {
                            id: text_dev
                            text: type;
                            MouseArea{
                                anchors.fill: text_dev
                                onClicked: {
                                     console.log("kliknięcie w urządzenie DEV")
                                }
                            }
                        }
                         anchors.left: col_rows.left

                    }
                    x: element.x+element.width/6;
                }
                Column
                {
                    id: col_edit
                    Image{
                        id: pen
                        width: 30
                        height: 30
                        source: image_2
                        MouseArea{
                            anchors.fill: pen
                            onClicked: {
                                 console.log("kliknięcie w obrazek długopisu")
                            }

                        }
                    }

                     anchors.right: element.right
                }
            }
        }
    }
}

