import QtQuick 2.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.5
import MyLoanagent 1.0

Rectanglecustamized{
    rectanglewidth: parent.width
    rectangleheight: parent.height
    rectcolor: "orange"
    signal backtoadminpagefromloanagents();
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
                // id: animation;
                source:"qrc:/swipeleftanimatedimage.gif"
                playing: true
            }
            anchors.top: parent.top
            horizontalScrollBarPolicy: 10
            anchors.topMargin: window3.height/14
            id: lv1
            model: Loanagents{}
            width: window3.width
            height: window3.height
            clip:true
            flickableItem.flickableDirection : Flickable.HorizontalAndVerticalFlick
            style: TableViewStyle {
                headerDelegate: Rectangle {
                    height: window3.height/12
                    color: "lightblue"
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
                    color: styleData.row % 2 ? "pink":"white"
                    Text {
                        anchors.fill: parent
                        text: styleData.value

                        verticalAlignment: styleData.column === 0? Text.AlignVCenter :Text.AlignVCenter
                        // horizontalAlignment: styleData.column===0?Text.AllignHCenter:Text.AllignHCenter
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
            TableViewColumn {title: qsTr("AgentWork")+MyTrans.mylngstring; role: "loanagentwork"; width:window3 .width/2;movable:false;resizable:false}
            TableViewColumn {title: qsTr("AgentName")+MyTrans.mylngstring; role: "loanagentname"; width: window3.width/2;movable:false;resizable:false}
            TableViewColumn {title: qsTr("Mobile.no")+MyTrans.mylngstring; role: "loanagentmobno"; width: window3.width/2;movable:false;resizable:false}
            TableViewColumn {title: qsTr("AgentBranch")+MyTrans.mylngstring; role: "loanagentbranch"; width: window3.width/1.8;movable:false;resizable:false}
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
                backtoadminpagefromloanagents();
            }
        }
    }

}
