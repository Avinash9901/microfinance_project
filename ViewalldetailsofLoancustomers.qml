import QtQuick 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.4
import QtQuick.Controls 2.14
Rectanglecustamized{
    property var pigmycustomers:Agent2.pigmycustomernames()
    signal viewbacktolancustomersClicked();
    id:viewpageid
    rectanglewidth: parent.width
    rectangleheight: parent.height
    rectcolor: "#dcdbca"
    Text {
        font.pixelSize: viewpageid.height/22
        font.family: "Droid Sans Mono"
        anchors.horizontalCenter: viewpageid.horizontalCenter
        anchors.top: viewpageid.top
        anchors.topMargin: viewpageid.height/7
        text: qsTr("Customer Details")+MyTrans.mylngstring
    }

    ListView{

        id:mylist
        anchors.centerIn: parent
        interactive: false
        width: viewpageid.width/1.1
        height: viewpageid.height/2.1
        model:loancustomerdetails
        //     model:5
        delegate:
            Rectangle{
            id:listviewdeligate
            border.width: viewpageid.height/390
            border.color: "#1b1313"
            width: viewpageid.width/1.1
            height: viewpageid.height/1.9
            radius: viewpageid.height/90
            color: "white"
            Row{
                spacing: viewpageid.height/10
                Column{
                    spacing: viewpageid.height/80
                    Repeater{
                        model: ["Customer name","Mobile number","Aadhar number","Pan number","Customer place","Customer Branch","Customer Agent","Account number"]
                        Rectangle{
                            anchors.left: parent.left
                            anchors.leftMargin: viewpageid.height/40
                            width: viewpageid.width/3.5
                            height: viewpageid.height/19
                            color: "transparent"
                            Text{
                                text: qsTr(modelData)+MyTrans.mylngstring
                                font.family: "times new roman"
                                color: "black"
                                horizontalAlignment: Text.right
                                anchors.verticalCenter: parent.verticalCenter
                                font.pixelSize: viewpageid.height/44
                            }
                        }
                    }
                }

                Column{
                    spacing: viewpageid.height/80

                    Repeater{
                        model: [name,mobile,adhar,pan,place,branch,agent,accountno]
                        Rectangle{
                            width: viewpageid.width/2.8
                            height: viewpageid.height/19
                            color: "transparent"
                            Text{
                                text: modelData
                                horizontalAlignment: Text.right
                                anchors.verticalCenter: parent.verticalCenter
                                font.pixelSize: viewpageid.height/43
                                font.family: "times new roman"
                                color: "black"
                            }
                        }
                    }
                }
            }

        }
    }
    Image {
        id: backtext
        width: viewpageid.width/7
        height: viewpageid.height/12
        source: "qrc:/finalbackimage(1).png"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                viewbacktolancustomersClicked();
            }
        }
    }
}
