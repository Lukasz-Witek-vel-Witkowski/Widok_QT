import QtQuick 2.4
Grid
{
    width: 300
    height: 200
    rows: 5

    ListModel
    {
        id: inputer

        ListElement
        {
            _color: "white"
            _color_text : "Black"
            value: "Nazwa Grupy"
            _Size_text: 10
            _Family_text: "Helvetica"
            _in: 1
            _up: 1
        }

        ListElement
        {
            _color: "white"
            _color_text: "Black"
            value: "klucz_grupy"
            _Size_text: 10
            _Family_text: "Helvetica"
            _in: 1
            _up: 0
        }

        ListElement{
            _color: ""
            _color_text : "Black"
            value: "To unikalny klucz dzięki, któremu Twoje urządzenie będzie chronione";
            _Family_text: "Times"
            _Size_text: 6
            _in: 0
            _up: 2
        }

        ListElement
        {
            _color: "white"
            _color_text: "Black"
            value: "Nazwa Sieci Wi-Fi"
            _Family_text: "Helvetica"
            _Size_text: 10
            _in: 1
            _up: 1
        }

        ListElement
        {
            _color: "white"
            _color_text : "Grey"
            value: "Hasło do sieci"
            _Family_text: "Helvetica"
            _Size_text: 10
            _in: 1
            _up: 1
        }
    }

    ListView
    {
        id: listView
        model: inputer
        delegate: elementInputer
        anchors.fill: parent;
    }
}

