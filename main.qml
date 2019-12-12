import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.4
Window {
    id :mainWindow
    visible: true
    title: qsTr("Hello World")
    width: 680
    height: 500
    Rectangle
    {
       id: bat

        gradient :Gradient
        {
            GradientStop    { position:  0.0;  color:  "white" }
            GradientStop    { position:  0.6;  color:  "lightgrey" }
        }

        width: mainWindow.width
        height: mainWindow.height
        ScrollView
        {
            width: mainWindow.width
            height: mainWindow.height
            clip: true
            Grid
            {
                x: 10
                 rows: 4
                id : layout_windows
                width: 0.9 * mainWindow.width
                height: 0.9 * mainWindow.height
                Row
                {
                    id: row_empty
                    height: title.height*3

                    Text
                    {
                        text: "X"
                          anchors.verticalCenter: row_empty.verticalCenter
                          x: row_empty.x+10
                          font.pointSize: 14
                    }

                }

                Row
                {
                    id: title_row
                    height: title.height*3

                    Column
                    {
                        id: title

                        Text
                        {
                            text: "Skonfiguruj urządzenie";
                            font.bold: true
                            font.pointSize: 14
                        }
                        anchors.verticalCenter: title_row.verticalCenter
                    }

                    Column
                    {
                          id: empty_column
                    }
                }

                Row
                {
                    id : row_window

                    Column
                    {
                        id : column_left_window

                        Panel
                        {
                            id : mainPanel
                            height: 300

                        }
                    }

                    Column
                    {
                        id: column_right_window

                        Panel_botton
                        {
                            id: _panel_botton
                        }

                        Panel_right
                        {
                            id: right
                        }

                        Panel_interface
                        {
                            id: interface_Zapisz
                            anchors.right: column_right_window.right

                        }
                    }
                }
            }
        }
    }
}

