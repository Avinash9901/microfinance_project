import QtQuick 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.4
import Adminviewloancust 1.0
Rectanglecustamized{
    signal adminloanviewbackClicked();
    id:viewpageid
    rectanglewidth: parent.width
    rectangleheight: parent.height/10
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
            width: viewpageid.width/3
            height: viewpageid.height/2
            // id: animation;
            source:"qrc:/swipeleftanimatedimage.gif"
            playing: true
        }
        anchors.top: parent.top
        anchors.topMargin: viewpageid.height/14
        id: lv1
        model: Loancustomers{}
        width: viewpageid.width
        height: viewpageid.height
        clip:true
        flickableItem.flickableDirection : Flickable.HorizontalAndVerticalFlick
        style: TableViewStyle {
            headerDelegate: Rectangle {
                height: viewpageid.height/12
                color: "lightsteelblue"
                Text {
                    id: headerItem
                    anchors.centerIn: parent
                    text: styleData.value
                    font.bold: true
                    font.pixelSize: viewpageid.height/32
                    font.family: "Helvetica"
                }
                Rectangle{
                    anchors.right: parent.right
                    width:viewpageid.width/1050
                    color:"gray"
                    height:viewpageid.height
                }
            }
            rowDelegate: Rectangle {
                height:viewpageid.height/12
                Rectangle{
                    width:viewpageid .width
                    anchors.bottom: parent.baseline
                    height:viewpageid.height/480
                    color:"gray"
                }
            }
            itemDelegate:Rectangle{
                height:viewpageid.height/12
                color: styleData.row % 2 ? "light gray":"white"
                Text {
                    anchors.fill: parent
                    text: styleData.value
                    horizontalAlignment: styleData.column === 0? Text.AlignLeft:Text.AlignLeft
                    wrapMode: Text.Wrap
                    font.pixelSize: viewpageid.height/34

                }

                Rectangle{
                    anchors.right: parent.right
                    width:viewpageid.width/600
                    color:"black"
                    height:viewpageid.height
                }
                Rectangle{
                    anchors.bottom: parent.bottom
                    height:parent.height/1000
                    color:"black"
                    width:viewpageid.width
                }

            }
        }
        TableViewColumn {title: qsTr("Customer_name")+MyTrans.mylngstring; role: "name"; width:viewpageid .width/2; movable:false;resizable:false

        }
        TableViewColumn {title:qsTr("Mobile_number")+MyTrans.mylngstring; role: "mobile"; width: viewpageid.width/2;movable:false;resizable:false

        }
        TableViewColumn {title:qsTr("AAdhar_number")+MyTrans.mylngstring; role: "adhar"; width: viewpageid.width/2;movable:false;resizable:false}
        TableViewColumn {title: qsTr("Pan_number")+MyTrans.mylngstring; role: "pan"; width: viewpageid.width/2;movable:false;resizable:false}
        TableViewColumn {title: qsTr("Address")+MyTrans.mylngstring; role: "place"; width: viewpageid.width/2;movable:false;resizable:false}
        TableViewColumn {title: qsTr("Branch")+MyTrans.mylngstring; role: "branch"; width: viewpageid.width/2;movable:false;resizable:false}
        TableViewColumn {title:qsTr("Agents")+MyTrans.mylngstring; role: "agent"; width: viewpageid.width/2;movable:false;resizable:false}
        TableViewColumn {title: qsTr("A/C_number")+MyTrans.mylngstring; role: "accountno"; width: viewpageid.width/2;movable:false;resizable:false}

    }
    Image {
        id: backtext
        width: viewpageid.width/7
        height: viewpageid.height/12
        source: "qrc:/finalbackimage(1).png"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                adminloanviewbackClicked();
            }
        }
    }
}
