import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14
import QtQuick.Dialogs 1.3
ApplicationWindow {
    visible: true
    width: screen.width
    height: screen.height
    Component.onCompleted: {
        console.log("**************************",height,width)
    }

    title: qsTr("Microfinance")
    Image{
        id:rectwindow
        source: "qrc:/loginimage.jpg"
        width: parent.width
        height: parent.height
        Component.onCompleted: {
        }
    }
    LoadManager{
        id:load
    }
}

