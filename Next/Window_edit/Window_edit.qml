import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window_editFormularz
{
    onAccepted:
    {
       message(tf_address.text , tf_name.text, id, combo.model.get(combo.currentIndex).Icon)
    }

}
