import QtQuick 2.0
Item {
    anchors.fill: parent
    signal viewpigmycustomerClicked();
    signal adminviewloancustomerClicked();
    signal totalpigmuagentsvisClicked();
    signal totalloanagentlist();
    signal backtoadminmainpageClicked();
    Keys.onBackPressed: {
        backtoadminmainpageClicked();
    }

    Rectangle{
        width: parent.width
        height: parent.height
        id:mainrect
        color: "#F4F1F0"
        Image {
            id: backtext
            width: mainrect.width/8
            height: mainrect.height/14
            source: "qrc:/finalbackimage(1).png"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    backtoadminmainpageClicked();
                }
            }
        }
        Rectangle{
            anchors.top: parent.top
            anchors.topMargin: mainrect.height/5.5
            anchors.horizontalCenter: parent.horizontalCenter
            width: mainrect.width
            height: mainrect.height/12
            radius: mainrect.height/45
            color: "transparent"
            border.color: "gray"
            border.width: mainrect.height/450
            Text {
                id: name
                text: qsTr("More Details")+MyTrans.mylngstring// This is available in all editors.
                anchors.centerIn: parent
                font.family: "Droid Sans Mono"
                font.pixelSize: mainrect.height/20
                color: "black"

                style: Text.Raised; styleColor: "white"
            }
        }
        Column{
            anchors.centerIn: parent
            spacing: 20
            Rectangle{
                width: mainrect.width/2.1
                height: mainrect.height/15
                //rectanglebordercolor: "white"
                radius: 10
                color: "blue"
                Text{
                    text: qsTr("Pigmy Customers")+MyTrans.mylngstring
                    color: "white"
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        viewpigmycustomerClicked();
                    }
                }
            }
            Rectangle{
                width: mainrect.width/2.1
                height: mainrect.height/15
                color: "blue"
                radius: 10
                Text{
                    text: qsTr("Loan Customers")+MyTrans.mylngstring
                    color: "white"
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        adminviewloancustomerClicked();
                    }
                }
            }
            Rectangle{
                width: mainrect.width/2.1
                height: mainrect.height/15
                // rectanglebordercolor: "white"
                color: "blue"
                radius: 10
                //borderwidth: mainrect.height/250
                Text{
                    text: qsTr("Pigmy Agents")+MyTrans.mylngstring
                    color: "white"
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        totalpigmuagentsvisClicked();
                    }
                }
            }
            Rectangle{
                width: mainrect.width/2.1
                height: mainrect.height/15
                color: "blue"
                radius: 10
                Text{
                    text: qsTr("Loan Agents")+MyTrans.mylngstring
                    color: "white"
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        totalloanagentlist();
                    }
                }
            }
            // }
        }
    }
}
