import QtQuick 2.0
import Qt.labs.platform 1.1
Item {
    width: parent.width
    height: parent.height
    id:maiid
    signal gotologinpage();



    Rectangle{
        color: "white"
        id:recttt
        width: maiid.width
        height: maiid.height

        Image {
            id: logo
            source: "qrc:/signuppagelogo.png"
            anchors.top: parent.top
            anchors.topMargin: recttt.height/3
            width: recttt.width/3.5
            height: recttt.height/7
            anchors.horizontalCenter: recttt.horizontalCenter

        }
        Text {
            anchors.top: parent.top
            anchors.topMargin: recttt.height/2
            anchors.horizontalCenter: recttt.horizontalCenter
            font.pixelSize: recttt.height/18
            color: "black"
            font.family: "Droid Sans Mono"
            text: qsTr("MICROFINANCE")
        }

    }
    Timer{
        interval: 3000
        running: true
        repeat: true
        onTriggered: {
            gotologinpage();
        }
    }
}
