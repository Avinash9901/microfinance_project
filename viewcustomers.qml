import QtQuick 2.0
//import QtQuick 2.15
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.4
import QtQuick.Controls 2.14
import Qt.labs.platform 1.1
import QtQuick 2.14
import customer 1.0
Rectangle{
    anchors.fill: parent

    Cust{
        id:_obj2
    }
    MessageDialog{
        id:error
        buttons: MessageDialog.Ok
    }

    Timer{
        interval: 30
        running: true
        repeat: false
        onTriggered: {
            error.title=qsTr("Swipe right and click for Customer details OR Swipe left and click for deposit")+MyTrans.mylngstring
            error.open();
        }
    }

    property var pigmycustomers:Agent2.pigmycustomernames()
    signal viewbackClickedtomaincommunication();
    signal viewalldetailsclicked();
    signal transactionClicked();
    signal viewcollectionClicked();
    id:viewpageid
    width: parent.width
    height: parent.height
    color: "#dcdbca"
    Popup{
        id:customer_view_validation
        anchors.centerIn: parent
        width: viewpageid.width/1.25
        height: viewpageid.height/1.5
        background: Rectangle{
            width: viewpageid.width/1.25
            height: viewpageid.height/1.5
            radius:  viewpageid.width/26
            border.color: "white"
            color: "black"
            opacity: 0.4
        }
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Rectangle {
            color: "transparent"
            anchors.left: parent.left
            anchors.leftMargin: viewpageid.width/2
            width: animation.width/1.5; height: animation.height + 8
            AnimatedImage {
                visible: false
                width: viewpageid.width/3
                height: viewpageid.height/9
                id: animation;
                source:"qrc:/rightimage-unscreen.gif"
                playing: false}
            Rectangle {
                color: "transparent"
                property int frames: animation.frameCount
                width: 4; height: 8
                x: (animation.width - width) * animation.currentFrame / frames
                y: animation.height
            }
        }

        Column{
            anchors.left: parent.left
            anchors.leftMargin: parent.height/33
            anchors.top: parent.top
            anchors.topMargin: parent.height/10
            spacing: viewpageid.height/11
            Textcustamized{
                id:agententerpassword
                rectwidth  : viewpageid.width/9
                rectheight:  viewpageid.height/24
                fontsize: viewpageid.width/20
                tffocus: false
                enable: false
                tfborder: "white"
                tfcolor: "lightgray"
                tfplaceholder: qsTr("Agent passcode")+MyTrans.mylngstring
                textfieldpixel: viewpageid.height/39
                tfwidth: viewpageid.width/1.5
                tfheight: viewpageid.height/16
                hide:TextInput.Password
                mxlength: 8
                valid:  RegExpValidator { regExp: /[0-9]+/}
                Image {
                    id: hidepassword
                    anchors.left: parent.left
                    anchors.leftMargin: viewpageid.width/1.9
                    anchors.top: parent.top
                    anchors.topMargin: parent.height/1.21
                    source: "qrc:/hideimage-removebg-preview.png"
                    width:viewpageid.width/6
                    height: viewpageid.height/12
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            unhidepassword.visible=true
                            hidepassword.visible=false
                            agententerpassword.hide=TextInput.Normal
                        }
                    }
                }
                Image {
                    id: unhidepassword
                    visible: false
                    anchors.left: parent.left
                    anchors.leftMargin: viewpageid.width/1.8
                    anchors.top: parent.top
                    anchors.topMargin: parent.height/1.15
                    source: "qrc:/showpassword-removebg-preview.png"
                    width:viewpageid.width/9
                    height: viewpageid.height/13
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            hidepassword.visible=true
                            unhidepassword.visible=false
                            agententerpassword.hide=TextInput.Password
                        }
                    }
                }
            }

            Rectangle{
                width: viewpageid.width/1.5
                height: viewpageid.height/16
                color: "#003CBE"
                radius:  viewpageid.width/26
                Text {
                    font.pixelSize: viewpageid.width/23
                    color: "white"
                    anchors.centerIn: parent
                    text: qsTr("Submit")+MyTrans.mylngstring
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {

                        var mypigmypassword= Agent2.mypigmypassword();
                        console.log("my piggy password======",mypigmypassword)
                        if(agententerpassword.tfidDisplayText2==mypigmypassword){
                            timerr.running=true
                            animation.visible=true
                            animation.playing=true
                            //                           viewalldetailsclicked();

                        }else{
                            error.title=qsTr("Invalid password")+MyTrans.mylngstring
                            error.open();
                        }
                    }
                }
            }

        }
        Column{
            id:numbercolumn
            anchors.left: parent.left
            anchors.leftMargin: parent.height/12.5
            anchors.top: parent.top
            anchors.topMargin: parent.height/2.15
            spacing: 6
            Row{
                width: parent.width

                spacing: 12
                Repeater{
                    model: ["7","4","6"]
                    Rectangle{
                        id:modelDataaaa
                        width: viewpageid.width/6.5
                        radius: width
                        height: viewpageid.width/6.5
                        opacity: 0.7
                        border.color: "white"
                        color: "black"

                        Text{
                            id:t11
                            text: modelData
                            color: "white"
                            font.bold: true
                            font.pixelSize: viewpageid.height/27
                            anchors.centerIn: parent
                        }
                        MouseArea{
                            anchors.fill: parent
                            onClicked:
                            {




                                agententerpassword.tfidDisplayText2 +=modelData
                                console.log("my numbersss===",modelData)
                                console.log("_____________",agententerpassword.tfidDisplayText2)
                            }
                            onEntered: {
                                modelDataaaa.color="blue"
                            }

                            onReleased: {
                                modelDataaaa.color="black"
                            }
                        }
                    }
                }
            }
            Row{
                spacing: 12
                Repeater{
                    model: ["3","5","9"]
                    Rectangle{
                        id: modelDataaaa2
                        width: viewpageid.width/6.5
                        radius: width
                        height: viewpageid.width/6.5
                        opacity: 0.7
                        border.color: "white"
                        color: "black"
                        Text{
                            id:t22
                            text: modelData
                            color: "white"
                            font.bold: true
                            font.pixelSize: viewpageid.height/27
                            anchors.centerIn: parent
                        }
                        MouseArea{
                            anchors.fill: parent
                            onClicked:
                            {
                                agententerpassword.tfidDisplayText2 +=modelData
                                console.log("my numbersss===",modelData)
                                console.log("_____________",agententerpassword.tfidDisplayText2)
                            }
                            onEntered: {
                                modelDataaaa2.color="blue"
                            }

                            onReleased: {
                                modelDataaaa2.color="black"
                            }
                        }
                    }
                }
            }
            Row{
                spacing: 12
                Repeater{
                    model: ["1","8","2"]
                    Rectangle{
                        id:modelDataaaa3
                        opacity: 0.7
                        border.color: "white"
                        color: "black"
                        width: viewpageid.width/6.5
                        radius: width
                        height: viewpageid.width/6.5
                        Text{
                            id:t23
                            text: modelData
                            color: "white"
                            font.bold: true
                            anchors.centerIn: parent
                            font.pixelSize: viewpageid.height/27
                        }
                        MouseArea{
                            anchors.fill: parent
                            onClicked:
                            {
                                agententerpassword.tfidDisplayText2 +=modelData
                                console.log("my numbersss===",modelData)
                                console.log("_____________",agententerpassword.tfidDisplayText2)
                            }
                            onEntered: {
                                modelDataaaa3.color="blue"
                            }

                            onReleased: {
                                modelDataaaa3.color="black"
                            }
                        }
                    }
                }
            }

            Row{
                spacing: 12
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle{
                    id:modelDataaaa6
                    opacity: 0.7
                    border.color: "white"
                    color: "black"
                    width: viewpageid.width/6.5
                    radius: width
                    height: viewpageid.width/6.5
                    Text{
                        id:t26
                        text: "X"
                        color: "red"
                        font.bold: true
                        font.pixelSize: viewpageid.height/21
                        anchors.centerIn: parent
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            agententerpassword.tfidDisplayText2=""
                        }
                    }
                }
                Rectangle{
                    id:modelDataaaa4
                    opacity: 0.7
                    border.color: "white"
                    color: "black"
                    width: viewpageid.width/6.5
                    radius: width
                    height: viewpageid.width/6.5
                    Text{
                        id:t24
                        text: "0"
                        color: "white"
                        font.bold: true
                        anchors.centerIn: parent
                        font.pixelSize: viewpageid.height/27
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked:
                        {
                            agententerpassword.tfidDisplayText2 +=t24.text
                            console.log("_____________",agententerpassword.tfidDisplayText2)
                        }
                        onEntered: {
                            modelDataaaa4.color="blue"
                        }

                        onReleased: {
                            modelDataaaa4.color="black"
                        }
                    }
                }
                Rectangle{
                    id:modelDataaaa5
                    opacity: 0.7
                    border.color: "white"
                    color: "black"
                    width: viewpageid.width/6.5
                    radius: width
                    height: viewpageid.width/6.5
                    Text{
                        id:t25
                        text: "<"
                        color: "white"
                        font.bold: true
                        font.pixelSize: viewpageid.height/25
                        anchors.centerIn: parent
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            agententerpassword.tfidDisplayText2=agententerpassword.tfidDisplayText2.substring(0,agententerpassword.tfidDisplayText2.length-1)
                        }
                    }
                }
            }
        }
    }

    Timer{
        id:timerr
        interval: 2200
        running: false
        repeat: true
        onTriggered: {
            animation.playing=false
            viewalldetailsclicked();
            console.log("stoppeddd")
        }
    }
    Rectangle{
        anchors.top: viewpageid.top
        anchors.topMargin: viewpageid.height/14
        border.color: "blue"
        width: viewpageid.width
        height: viewpageid.height/15
        color: "white"
        Image {
            width: viewpageid.width/11
            height: viewpageid.height/16
            anchors.left: parent.left
            anchors.leftMargin: parent.width/1.4
            anchors.verticalCenter: parent.verticalCenter
            source: "qrc:/customersviewimage-removebg-preview.png"
        }
        Text {
            font.pixelSize: viewpageid.height/32
            font.bold: true
            // id: name
            text: qsTr("Customers")+MyTrans.mylngstring
            anchors.centerIn: parent
        }
    }
    ListView{
        id:mylist
        spacing: 6
        anchors.top: parent.top
        anchors.topMargin: viewpageid.height/7
        anchors.fill: parent
        model:pigmycustomers.length

        delegate:

            SwipeDelegate{
            spacing: 84
            //  property var mydata:model
            id:customerofpigmy

            text:pigmycustomers[index]
            width: viewpageid.width
            height: viewpageid.height/13
            font.pixelSize: viewpageid.height/35
            swipe.left: Row{
                anchors.left: parent.left
                height: parent.height
                Label{
                    id:movalable
                    text: qsTr("Details")+MyTrans.mylngstring
                    color: "white"
                    verticalAlignment: Label.AlignVCenter
                    horizontalAlignment: Label.AlignHCenter
                    padding: 12
                    height: parent.height
                    background: Rectangle{
                        color: movalable.SwipeDelegate.pressed ? Qt.darker("blue", 1.1) : "#ffbf47"
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                var customer_name=Agent2.pigmynamefromqml(customerofpigmy.text)
                                console.log("pigmycustomer name======",customerofpigmy.text)
                                customer_view_validation.open();
                            }
                        }
                    }
                }

            }

            swipe.right: Row{
                anchors.right: parent.right
                height: parent.height
                Label{
                    id:movalable2
                    text: qsTr("Deposit")+MyTrans.mylngstring
                    color: "white"
                    verticalAlignment: Label.AlignVCenter
                    horizontalAlignment: Label.AlignHCenter
                    padding: 12
                    height: parent.height
                    background: Rectangle{
                        color: movalable2.SwipeDelegate.pressed ? Qt.darker("blue", 1.1) : "lightgreen"
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                var validationss=Agent2.validationOfCustomer(customerofpigmy.text)
                                console.log("pigmycustomer name======",customerofpigmy.text)
                                if(validationss){
                                    viewcollectionClicked();

                                    console.log("************details are validated************")
                                }
                                else{
                                    error.title="Incorrect details"
                                    error.open();
                                    console.log("************details are incorrect************")
                                }
                            }
                        }
                    }
                }

            }
        }
    }
    Component.onCompleted: {
        console.log("namesss===",pigmycustomers)
    }
    Image {
        id: backtext
        width: viewpageid.width/7
        height: viewpageid.height/12
        source: "qrc:/finalbackimage(1).png"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                viewbackClickedtomaincommunication();
            }
        }
    }
}
