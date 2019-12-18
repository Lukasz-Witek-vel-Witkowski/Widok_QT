import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
    anchors.leftMargin: 20
    property alias new_group: new_group
    property alias is_group: is_group
    property alias name_group: name_group
    property alias key_group: key_group
    property alias name_network: name_network
    property alias password_network: password_network
    property alias check_button: check_button

    ScrollView
    {
        id: scrollview
        anchors.fill: parent
        clip: true

        Item
        {
            implicitHeight: Math.max(scrollview.height, right_coolumn.height)
            implicitWidth: Math.max(scrollview.width, right_coolumn.width)

            ColumnLayout
            {
                id: right_coolumn
                spacing: 10
                anchors.centerIn: parent

                ButtonGroup
                {
                    id: row_booton
                    buttons: buttons.children
                }

                Row
                {
                    spacing: 10
                    id: buttons

                    RoundButton
                    {
                        id: new_group

                        palette
                        {
                            button: "green"
                        }
                        width: text_new_group.width + 20

                        Text
                        {
                            id: text_new_group
                            text: "Nowa Grupa"
                            anchors.centerIn: parent
                            color: "White"
                        }
                    }

                    RoundButton
                    {
                        id: is_group
                        text: "Istniejąca Grupa"

                        palette
                        {
                            button: "lightgrey"
                        }
                    }
                }

                TextField
                {
                    id: name_group
                    placeholderText: qsTr("Nazwa Grupy")
                    Layout.fillWidth: true

                    background: Rectangle
                    {
                        border.width: 0
                    }
                }

                TextField {
                    id: key_group
                    placeholderText: qsTr("Klucz grupy")
                    Layout.fillWidth: true

                    background: Rectangle
                    {
                        border.width: 0
                    }
                }

                Label
                {
                    id: description
                    text: "To unikalny klucz dzięki, któremu Twoje urządzenia będą chronione."
                    font.pointSize: 6
                }

                TextField
                {
                    id: name_network
                    placeholderText: qsTr("Nazwa sieci Wi-Fi")
                    Layout.fillWidth: true

                    background: Rectangle
                    {
                        border.width: 0
                    }
                }

                TextField
                {
                    id: password_network
                    placeholderText: qsTr("Hasło do sieci")
                    placeholderTextColor: "lightgrey"
                    Layout.fillWidth: true

                    background: Rectangle
                    {
                        border.width: 0
                    }
                }
            }

            RoundButton
            {
                id: check_button
                width: name.width * 1.5
                height: name.height * 2
                radius: 5
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 30

                palette
                {
                    button: "lightgreen"
                }

                Text
                {
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
