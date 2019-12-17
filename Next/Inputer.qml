import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

InputerFormularz
{

    ColumnLayout
    {
        id: right_coolumn
        spacing: 10

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
                width: text_new_group.width+20

                Text
                {
                    id: text_new_group
                    text: "Nowa Grupa"
                    anchors.centerIn: parent
                    color: "White"
                }

                onClicked:
                {
                    console.log("Klikniecie na przycisk nowa grupa")
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

                onClicked:
                {
                    console.log("Klikniecie na przycisk istniejaca grupa")
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

            onEditingFinished:
            {
                console.log("Nazwa Grupy: " + name_group.text)
            }
        }

        TextField
        {
            id: key_group
            placeholderText: qsTr("Klucz grupy")
            Layout.fillWidth: true

            background: Rectangle
            {
                border.width: 0
            }

            onEditingFinished:
            {
                console.log("Klucz grupy: " +key_group.text)
            }
        }

        Label
        {
            id: opis
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

            onEditingFinished:
            {
                console.log("Nazwa sieci Wi-Fi: " + name_network.text)
            }
        }

        TextField
        {
            id: password_network
            placeholderText: qsTr("Hasło do sieci")
            placeholderTextColor: "lightgrey"
            Layout.fillWidth: true

            background: Rectangle{
                border.width: 0
            }

            onEditingFinished:
            {
                console.log("Hasło do sieci: " +password_network.text)
            }
        }
    }

    RoundButton
    {
        id:check_button
        width: name.width*1.5
        height: name.height*2
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

        onClicked:
        {
            console.log("Klikniecie na przycisk zapisz")
        }
    }
}
