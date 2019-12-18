import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
TypeDeviceFormularz
{

    Component
    {
        id: item_

        Button
        {

            width: parent.width

            icon
            {
                source: Icon
            }
            text: Name
            font.pointSize: 20
        }
    }

    onCurrentIndexChanged:
    {
       // console.log(model.get(currentIndex).Icon + " " + model.get(currentIndex).Name + " "+ model.get(currentIndex).Address)
        tf_name.text = model.get(currentIndex).Name
        tf_address.text = model.get(currentIndex).Address
    }

    contentItem: Button
    {

        width: parent.width

        icon
        {
            source: model.get(currentIndex).Icon
        }
        text: model.get(currentIndex).Name
        font.pointSize: 20
    }
    model: ModelTypeDevice {}
    delegate: item_
}
