import QtQuick 2.0
import Qt.labs.platform 1.1
Rectangle {
    id:window2
    width: parent.width
    height: parent.height
    color: "#F4F1F0"
    MessageDialog {
        id:error
        buttons: MessageDialog.Ok
    }
    Image {
        id: name
        source: "qrc:/signuppagelogo.png"
        anchors.top: parent.top
        anchors.topMargin: window2.height/12
        width: window2.width/3.5
        height: window2.height/7
        anchors.horizontalCenter: window2.horizontalCenter
    }
    signal  signuppagebackClicked();
    Rectangle   {
        width: parent.width/1.2
        height: parent.height/2
        border.color: "black"
        radius: 10
        color: "transparent"
        anchors.centerIn: parent

        Combocustamize{
            id:selectcomboforsignup
            anchors.top: parent.top
            anchors.topMargin: window2.height/55
            anchors.left: parent.left
            anchors.leftMargin: window2.width/5.6
            fontsizeofcombotxt:window2.height/37
            anchors.centerIn: parent
            rectcmbwdth: window2.width/8
            rectcmbhght: window2.height/20
            rectcmbtxt: qsTr("Select")+MyTrans.mylngstring
            cmbwidth: window2.width/3.5
            cmbheight: window2.height/20
            cmbmodel1:["PIGMY","LOAN"]
        }
        Text {
            id: cmbtextsignup
            visible: false
            text:selectcomboforsignup.cmbcurrenttxt
        }

        Column{
            spacing: window2.height/16
            anchors.top: parent.top
            anchors.topMargin: window2.height/14
            anchors.left: parent.left
            anchors.leftMargin: window2.width/10

            Textcustamized{
                id:signupname
                rectwidth: window2.width/2
                rectheight: window2.height/21
                rectext: qsTr("Name")+MyTrans.mylngstring
                txtfldspacing: 6
                tfwidth: window2.width/1.6
                tfheight: window2.height/17
                tffocus: false
                tfplaceholder: "Agent name"
                textfieldpixel: window2.height/45
                valid:  RegExpValidator { regExp: /[a-zA-Z ]+/}
                mxlength: 20
            }
            Textcustamized{
                id:signuppassword
                rectwidth: window2.width/2
                rectheight: window2.height/21
                txtfldspacing: 6
                rectext: qsTr("Password")+MyTrans.mylngstring
                tfwidth: window2.width/1.6
                tfheight: window2.height/17
                tffocus: false
                tfplaceholder: "Old Password"
                textfieldpixel: window2.height/45
                mxlength:8
                inputhidden: Qt.ImhDigitsOnly
            }
            Textcustamized{
                id:reenteredpassword
                rectwidth: window2.width/1.2
                rectheight: window2.height/21
                txtfldspacing: 6
                rectext: qsTr("New Password")+MyTrans.mylngstring
                tfplaceholder: "Max of 8-Digits"
                tfwidth: window2.width/1.6
                tfheight: window2.height/17
                tffocus: false
                textfieldpixel: window2.height/45
                mxlength:8
                hide: TextInput.Password
                // valid: IntValidator {}
                inputhidden: Qt.ImhDigitsOnly
                Image {
                    id: hidepassword
                    anchors.left: parent.left
                    anchors.leftMargin: window2.width/2.03
                    anchors.top: parent.top
                    anchors.topMargin: parent.height/1.1
                    source: "qrc:/hideimage-removebg-preview.png"
                    width:window2.width/6
                    height: window2.height/12
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            unhidepassword.visible=true
                            hidepassword.visible=false
                            reenteredpassword.hide=TextInput.Normal
                        }
                    }
                }
                Image {
                    id: unhidepassword
                    visible: false
                    anchors.left: parent.left
                    anchors.leftMargin: window2.width/1.94
                    anchors.top: parent.top
                    anchors.topMargin: parent.height/1.05
                    source: "qrc:/showpassword-removebg-preview.png"
                    width:window2.width/9
                    height: window2.height/13
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            hidepassword.visible=true
                            unhidepassword.visible=false
                            reenteredpassword.hide=TextInput.Password
                        }
                    }
                }
            }
        }
        Text {
            anchors.top: parent.top
            anchors.topMargin: window2.height/1.95
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("New password should be in digits only")+MyTrans.mylngstring
            font.bold: true
            color: "black"

            font.pixelSize: window2.height/53
        }
        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: window2.height/2.35
            spacing: 10
            Rectangle{
                id:signupsubmit
                width: window2.width/3.5
                height: window2.height/16
                color: "blue"
                radius: window2.height/58
                border.width: window2.height/250
                border.color: "white"
                Text{
                    text: qsTr("Submit")+MyTrans.mylngstring
                    color:"white"
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(cmbtextsignup.text=="PIGMY"){
                            if(signupname.tfidDisplayText.localeCompare("")===0){
                                error.title=qsTr("ENTER THE NAME")+MyTrans.mylngstring
                                error.open();
                            }
                            else if(signuppassword.tfidDisplayText.localeCompare("")===0){
                                error.title=qsTr("ENTER THE PASSWORD")+MyTrans.mylngstring
                                error.open();
                            }
                            else if(reenteredpassword.tfidDisplayText.localeCompare("")===0){
                                error.title=qsTr("ENTER NEW PASSWORD")+MyTrans.mylngstring
                                error.open();
                            }
                            else{

                                var pigmynewpassword;
                                pigmynewpassword=Receivedata.pigmyAgentChangepassword(signupname.tfidDisplayText2,signuppassword.tfidDisplayText2,reenteredpassword.tfidDisplayText2)
                                if(pigmynewpassword){
                                    error.title=qsTr("YOUR PASSWORD UPDATED SUCESSFULLY")+MyTrans.mylngstring
                                    error.open();
                                    signupname.tfidDisplayText2=""
                                    signuppassword.tfidDisplayText2=""
                                    reenteredpassword.tfidDisplayText2=""
                                    console.log("signup sucessfully")
                                }else{

                                    error.title=qsTr("YOUR OLD DETAILS ARE NOT CORRECT,try again")+MyTrans.mylngstring
                                    error.open();
                                    console.log("all data from piggy agebts",cmbtextsignup.text,signupname.tfidDisplayText2,signuppassword.tfidDisplayText2,reenteredpassword.tfidDisplayText2)
                                }
                            }
                        }else if(cmbtextsignup.text=="LOAN"){
                            if(signupname.tfidDisplayText.localeCompare("")===0){
                                error.title=qsTr("ENTER THE NAME")+MyTrans.mylngstring
                                error.open();
                            }
                            else if(signuppassword.tfidDisplayText.localeCompare("")===0){
                                error.title=qsTr("ENTER THE PASSWORD")+MyTrans.mylngstring
                                error.open();
                            }
                            else if(reenteredpassword.tfidDisplayText.localeCompare("")===0){
                                error.title=qsTr("ENTER NEW PASSWORD")+MyTrans.mylngstring
                                error.open();
                            }
                            /* else if(signuppassword.tfidDisplayText2 != reenteredpassword.tfidDisplayText2){
                          error.title=qsTr("PASSWORD NOT MATCHING")+MyTrans.mylngstring
                          error.open();
                      }*/else{
                                //                            signuppagebackClicked();
                                var loannewpassword;
                                loannewpassword=Receivedata.loanAgentChangepassword(signupname.tfidDisplayText2,signuppassword.tfidDisplayText2,reenteredpassword.tfidDisplayText2)
                                if(loannewpassword){
                                    error.title=qsTr("YOUR PASSWORD UPDATED SUCESSFULLY")+MyTrans.mylngstring
                                    error.open();
                                    signupname.tfidDisplayText2=""
                                    signuppassword.tfidDisplayText2=""
                                    reenteredpassword.tfidDisplayText2=""
                                    console.log("signup sucessfully")
                                }
                                else{
                                    error.title=qsTr("YOUR OLD DETAILS ARE NOT CORRECT,try again")+MyTrans.mylngstring
                                    error.open();
                                }
                            }

                        }
                    }
                }
            }
            Rectangle{
                id:signupclear
                width: window2.width/3.5
                height: window2.height/16
                border.color: "white"
                border.width: window2.height/250
                radius: window2.height/58
                color: "blue"
                Text{
                    color:"white"
                    text: qsTr("Back")+MyTrans.mylngstring
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        signuppagebackClicked();
                    }
                }

            }
        }
    }
}
