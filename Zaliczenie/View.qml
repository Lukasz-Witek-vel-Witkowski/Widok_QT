import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
GridLayout{
        id: grid_view
        columns: 3

       Layout.minimumWidth: 800
       Layout.minimumHeight: 480
       Device_Panel{
                id: device_panel
                clip: true
                Layout.alignment: Qt.AlignHCenter
                Layout.margins:10
              //  Layout.bottom: mainWindows.background.bottom
             }

        ColumnLayout{
            id: right_coolumn
            spacing: 10
           ButtonGroup{
                id: row_booton
                buttons: buttons.children

            }
           Row{
               spacing: 10
               id: buttons
               RoundButton{
                   id: new_group
                   palette {
                       button: "green"
                   }
                   width: text_new_group.width+20
                   Text{
                       id: text_new_group
                       text: "Nowa Grupa"
                       anchors.centerIn: parent
                       color: "White"

                   }

               }
               RoundButton{
                   id: is_group
                   width: text_is_group.width+20
                   palette {
                       button: "lightgrey"
                   }
                   Text{
                       id: text_is_group
                       text: "Istniejąca Grupa"
                       anchors.centerIn: parent
                   }
               }
           }
            TextField{
                id: name_group
                placeholderText: qsTr("Nazwa Grupy")
                background: Rectangle{
                    border.width: 0
                    width: 300
                    height: 30
                }

            }
            TextField{
                id: key_group
                placeholderText: qsTr("Klucz grupy")
                background: Rectangle{
                    border.width: 0
                    width: 300
                    height: 30
                }
            }
            Label{
                id: opis
              Text{
                  text: "To unikalny klucz dzięki, któremu Twoje urządzenia będą chronione."
                  font.pointSize: 6

              }

            }
            TextField{
                id: name_network
                placeholderText: qsTr("Nazwa sieci Wi-Fi")
                background: Rectangle{
                    border.width: 0
                    width: 300
                    height: 30
                }

            }
            TextField{
                id: password_network
                placeholderText: qsTr("Hasło do sieci")
                placeholderTextColor: "lightgrey"
                background: Rectangle{
                    border.width: 0
                    width: 300
                    height: 30
                }
            }
        }
        ColumnLayout{
            width: check_button.width*2
            Layout.alignment: Qt.AlignBottom
            Row{
                id:row_buuton_check
                Layout.alignment: Qt.AlignBottom

            RoundButton{
                id:check_button
                width: name.width*1.5
                height: name.height*2
               // anchors.left: row_buuton_check.left
                radius: 5
                    palette {
                    button: "lightgreen"
                    }

                    Text {
                        id: name
                         text: "Zapisz  \u2714"
                         anchors.centerIn: check_button
                         anchors.leftMargin: 15
                         color: "white"
                    }

            }
            }
        }
}
