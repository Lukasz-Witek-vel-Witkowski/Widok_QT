import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

InputerFormularz
{

    new_group
    {

        onClicked:
        {
            console.log("Klikniecie na przycisk nowa grupa")
        }
    }

    is_group
    {

        onClicked:
        {
            console.log("Klikniecie na przycisk istniejaca grupa")
        }
    }

    name_group
    {

        onEditingFinished: {
            console.log("Nazwa Grupy: " + name_group.text)
        }
    }

    key_group
    {

        onEditingFinished: {
            console.log("Klucz grupy: " + key_group.text)
        }
    }

    name_network
    {

        onEditingFinished: {
            console.log("Nazwa sieci Wi-Fi: " + name_network.text)
        }
    }

    password_network
    {

        onEditingFinished: {
            console.log("Hasło do sieci: " + password_network.text)
        }
    }

    check_button
    {

        onClicked: {
            console.log("Klikniecie na przycisk zapisz")
        }
    }
}
