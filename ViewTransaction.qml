import QtQuick 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.5
import viewtrans 1.0
Rectanglecustamized{
    rectanglewidth: parent.width
    rectangleheight: parent.height
    rectcolor: "orange"
    signal transactionbackClicked();
    Rectanglecustamized{
        id:window3
        rectanglewidth: parent.width
        rectangleheight: parent.height
        rectcolor: "orange"
        TableView{
            Timer{
                interval: 2500
                running: true
                onTriggered: {
                    anim.playing=false
                    anim.visible=false

                }
            }
            AnimatedImage {
                id:anim
                visible: true
                anchors.centerIn: parent
                width: window3.width/3
                height: window3.height/2
                source:"qrc:/swipeleftanimatedimage.gif"
                playing: true
            }
            anchors.top: parent.top
            horizontalScrollBarPolicy: 10
            anchors.topMargin: window3.height/14
            id: lv1
            model: Transaction{}
            width: window3.width
            height: window3.height
            clip:true
            flickableItem.flickableDirection : Flickable.HorizontalAndVerticalFlick
            style: TableViewStyle {
                headerDelegate: Rectangle {
                    height: window3.height/12
                    color: "lightsteelblue"
                    Text {
                        id: headerItem
                        anchors.centerIn: parent
                        text: styleData.value
                        font.bold: true
                        font.pixelSize: window3.height/32
                        font.family: "Helvetica"
                    }
                    Rectangle{
                        anchors.right: parent.right
                        width:window3.width/1050
                        color:"gray"
                        height:window3.height
                    }
                }
                rowDelegate: Rectangle {
                    height:window3.height/12
                    Rectangle{
                        width:window3 .width
                        anchors.bottom: parent.baseline
                        height:window3.height/480
                        color:"gray"
                    }
                }
                itemDelegate:Rectangle{
                    height:window3.height/12
                    color: styleData.row % 2 ? "light gray":"white"
                    Text {
                        anchors.fill: parent
                        text: styleData.value

                        verticalAlignment: styleData.column === 0? Text.AlignVCenter :Text.AlignVCenter
                        font.pixelSize: window3.height/34
                    }
                    Rectangle{
                        anchors.right : parent.right
                        width:window3.width/600
                        color:"black"
                        height:window3.height
                    }
                    Rectangle{
                        anchors.bottom: parent.bottom
                        height:parent.height/1000
                        color:"black"
                        width:window3.width
                    }
                }
            }
            TableViewColumn {title: qsTr("transaction")+MyTrans.mylngstring; role: "trans"; width:window3 .width/2;movable:false;resizable:false}
            TableViewColumn {title: qsTr("Date")+MyTrans.mylngstring; role: "dateee"; width: window3.width/2;movable:false;resizable:false}
            TableViewColumn {title: qsTr("Rate %")+MyTrans.mylngstring; role: "interest"; width: window3.width/2;movable:false;resizable:false}
            TableViewColumn {title: qsTr("interest+deposite")+MyTrans.mylngstring; role: "withinterestamount"; width: window3.width/1.8;movable:false;resizable:false}
            TableViewColumn {title: qsTr("Balance")+MyTrans.mylngstring; role: "balance"; width: window3.width/2;movable:false;resizable:false}
        }

    }
    Image {
        id: backtext
        width: window3.width/7
        height: window3.height/12
        source: "qrc:/finalbackimage(1).png"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                transactionbackClicked();
            }
        }
    }

}
