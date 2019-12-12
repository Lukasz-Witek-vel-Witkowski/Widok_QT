import QtQuick 2.12

Grid
{
    id: grid_element_model
    width: 300
    height: 300
    rows: 4
    columns: 1

    ListModel
    {
        id: elementModel

        ListElement
        {
            name: "123.20.90"
            type: "Lampa"
            image_1: "ikona.png"
            image_2: "pen.png"
        }

        ListElement
        {
            name: "123.20.90"
            type: "Lampa"
            image_1: "ikona.png"
            image_2: "pen.png"
        }

        ListElement
        {
            name: "123.20.90"
            type: "Lampa"
            image_1: "ikona.png"
            image_2: "pen.png"
        }

        ListElement
        {
            name: ""
            type: ""
            image_1: ""
            image_2: ""
        }

        ListElement
        {
            name: ""
            type: ""
            image_1: ""
            image_2: ""
        }

        ListElement
        {
            name: ""
            type: ""
            image_1: ""
            image_2: ""
        }
    }

    ListView
    {
        model: elementModel
        delegate: elementComponent
        anchors.fill: grid_element_model
    }
}
