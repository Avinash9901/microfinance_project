import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4
import Qt.labs.platform 1.1
import QtQuick.Controls 1.3
import Myagents 1.0


Item {
    anchors.fill: parent
    signal gobacktologinClicked();
    signal gonextClicked();
    MessageDialog{
        id:errormessage
        buttons: MessageDialog.Ok
    }
    Rectangle {
        id:mainrectangle
        width: parent.width
        height: parent.height
        color: "#F4F1F0"
        Agents{
            id:age
        }
        Image {
            id: backtext
            source: "qrc:/finalbackimage(1).png"
            width: mainrectangle.width/7
            height: mainrectangle.height/12
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    gobacktologinClicked();
                }
            }
        }
        Image {
            id: nextview
            source: "qrc:/gonextimage.png"
            width: mainrectangle.width/7
            height: mainrectangle.height/12
            anchors.right: parent.right
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    gonextClicked();
                }
            }
        }

        Popup{
            id:changepasswordpopup
            anchors.centerIn: parent
            width: mainrectangle.width/1.3
            height: mainrectangle.height/1.6
            background: Rectangle{
                width: mainrectangle.width/1.3
                height: mainrectangle.height/1.6
                radius: 8
                border.color: "black"
                color: "white"
            }
            modal: true
            focus: true
            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
            Column{
                //            anchors.right: parent.right
                //            anchors.rightMargin:parent.width/1.5
                spacing: mainrectangle.height/15
                anchors.left: parent.left
                anchors.leftMargin: mainrectangle.width/20
                anchors.top: parent.top
                anchors.topMargin: parent.height/30
                Textcustamized{
                    id:adminoldname
                    rectwidth  : mainrectangle.width/10
                    rectheight:  mainrectangle.height/22
                    fontsize: mainrectangle.width/23
                    rectext: qsTr("Admin name")+MyTrans.mylngstring
                    txtfldspacing: 4
                    tfplaceholder: "Old name"
                    // tfborder: "white"
                    textfieldpixel: mainrectangle.height/42
                    tffocus: false
                    tfwidth: mainrectangle.width/1.6
                    tfheight: mainrectangle.height/20
                    valid:  RegExpValidator { regExp: /[a-zA-Z]+/}
                    mxlength: 15
                }
                Textcustamized{
                    id:adminoldpassword
                    rectwidth  : mainrectangle.width/10
                    rectheight:  mainrectangle.height/22
                    fontsize: mainrectangle.width/23
                    tfplaceholder: "Old password"
                    //tfborder: "white"
                    txtfldspacing: 4
                    tffocus: false
                    rectext: qsTr("Admin password")+MyTrans.mylngstring
                    textfieldpixel: rectwindow.height/42
                    tfwidth: mainrectangle.width/1.6
                    tfheight: mainrectangle.height/20
                    mxlength:8
                    inputhidden: Qt.ImhDigitsOnly
                }
                Textcustamized{
                    id:adminnewname
                    rectwidth  : mainrectangle.width/10
                    rectheight:  mainrectangle.height/22
                    fontsize: mainrectangle.width/23

                    // tfborder: "white"
                    txtfldspacing: 4
                    rectext: qsTr("New name")+MyTrans.mylngstring
                    //                tfidDisplayText2:"1001"
                    textfieldpixel: rectwindow.height/42
                    tfwidth: mainrectangle.width/1.6
                    tfheight: mainrectangle.height/20
                    mxlength: 15
                    tfplaceholder: "Max of 15 Characters"
                    valid:  RegExpValidator { regExp: /[a-zA-Z]+/}
                }
                Textcustamized{
                    id:adminnewpassword
                    rectwidth  : mainrectangle.width/10
                    rectheight:  mainrectangle.height/22
                    fontsize: mainrectangle.width/23
                    mxlength:8
                    //tfborder: "white"
                    txtfldspacing: 4
                    tffocus: false
                    rectext: qsTr("New password")+MyTrans.mylngstring
                    //                tfidDisplayText2:"1001"
                    textfieldpixel: rectwindow.height/42
                    tfwidth: mainrectangle.width/1.6
                    tfheight: mainrectangle.height/20
                    inputhidden: Qt.ImhDigitsOnly
                    tfplaceholder: "Max of 8-Digits"

                    Image {
                        id: hidepassword
                        anchors.left: parent.left
                        anchors.leftMargin: mainrectangle.width/2.04
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/1.3
                        source: "qrc:/hideimage-removebg-preview.png"
                        width:mainrectangle.width/6
                        height: mainrectangle.height/12
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                unhidepassword.visible=true
                                hidepassword.visible=false
                                adminnewpassword.hide=TextInput.Normal
                            }
                        }
                    }
                    Image {
                        id: unhidepassword
                        visible: false
                        anchors.left: parent.left
                        anchors.leftMargin: mainrectangle.width/1.96
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/1.27
                        source: "qrc:/showpassword-removebg-preview.png"
                        width:mainrectangle.width/9
                        height: mainrectangle.height/13
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                hidepassword.visible=true
                                unhidepassword.visible=false
                                adminnewpassword.hide=TextInput.Password
                            }
                        }
                    }
                }
            }

            Rectangle{
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: parent.height/1.2
                width: mainrectangle.width/1.8
                height: mainrectangle.height/16
                color: "orange"
                border.color: "white"
                radius: mainrectangle.height/77
                border.width: mainrectangle.height/250
                Text{
                    text: qsTr("Next")+MyTrans.mylngstring
                    color: "black"
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(adminoldname.tfidDisplayText2.localeCompare("")==0){
                            errormessage.title=qsTr("Enter the admin name")+MyTrans.mylngstring
                            errormessage.open();

                        }
                        else if(adminoldpassword.tfidDisplayText2.localeCompare("")==0){
                            errormessage.title=qsTr("Enter the admin  password")+MyTrans.mylngstring
                            errormessage.open();
                        }
                        else if(adminnewname.tfidDisplayText2.localeCompare("")==0){
                            errormessage.title=qsTr("Enter the New name")+MyTrans.mylngstring
                            errormessage.open();
                        }
                        else if(adminnewpassword.tfidDisplayText2.localeCompare("")==0){
                            errormessage.title=qsTr("Enter the New password")+MyTrans.mylngstring
                            errormessage.open();
                        }else{
                            var adminnewdetails=Receivedata.adminNameAndPasswordchngeids(adminoldname.tfidDisplayText2,adminoldpassword.tfidDisplayText2,adminnewname.tfidDisplayText2,adminnewpassword.tfidDisplayText2)
                            if(adminnewdetails){
                                console.log("name and password changed sucessfully")
                                errormessage.title=qsTr("your name and password changed sucessfully")+MyTrans.mylngstring
                                errormessage.open();
                                //errormessage.okClicked()=changepasswordpopup.visible=false
                                adminoldname.tfidDisplayText2=""
                                adminoldpassword.tfidDisplayText2=""
                                adminnewname.tfidDisplayText2=""
                                adminnewpassword.tfidDisplayText2=""
                                changepasswordpopup.close();
                            }

                            errormessage.title=qsTr("your old details are incorrect")+MyTrans.mylngstring
                            errormessage.open();
                        }
                    }
                }

            }
        }

        Rectangle{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: mainrectangle.height/1.1
            width: mainrectangle.width/1.18
            height: mainrectangle.height/18
            color: "lightgray"
            // border.color: "white"
            radius: mainrectangle.height/65
            //border.width: mainrectangle.height/250
            Text{
                anchors.centerIn: parent
                font.pixelSize: mainrectangle.height/42
                text: qsTr("Change password")+MyTrans.mylngstring
                color: "black"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    changepasswordpopup.open();
                    mainrectangle.focus=false
                }
            }
        }


        Rectanglecustamized{
            rectanglewidth: mainrectangle.width/1.2
            rectangleheight: mainrectangle.height/1.4
            rectangleradius:  10
            rectcolor: "transparent"
            anchors.centerIn: parent
            Text {
                id:t1
                text: qsTr("Add Agents")+MyTrans.mylngstring
                font.pixelSize: mainrectangle.height/20
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Droid Sans Mono"
                color: "black"

                style: Text.Raised; styleColor: "white"
                font.bold: true
            }
            Combocustamize{
                id:selectcombo
                anchors.top: parent.top
                anchors.topMargin: mainrectangle.height/11
                anchors.left: parent.left
                anchors.leftMargin: mainrectangle.width/3.8
                fontsizeofcombotxt:mainrectangle.height/35
                rectcmbwdth: mainrectangle.width/8
                rectcmbhght: mainrectangle.height/20
                rectcmbtxt: qsTr("Select")+MyTrans.mylngstring

                cmbwidth: mainrectangle.width/3.5
                cmbheight: mainrectangle.height/20
                cmbmodel1:["PIGMY","LOAN"]
            }
            Text {
                id: cmbtext
                visible: false
                text:  selectcombo.cmbcurrenttxt
            }
            Column{
                anchors.top: parent.top
                anchors.topMargin: mainrectangle.height/7
                anchors.left: parent.left
                anchors.leftMargin: mainrectangle.width/25.5
                spacing: mainrectangle.height/15


                Textcustamized{
                    id:agentname
                    rectwidth: mainrectangle.width/2
                    rectheight: mainrectangle.height/22
                    rectext: qsTr("Agent Name")+MyTrans.mylngstring
                    txtfldspacing: 6
                    tfplaceholder: "Max of 20 Characters only"
                    //                    tfborder: "white"
                    //                    textcolor: "white"
                    textbold: true
                    mxlength: 20
                    tfwidth: mainrectangle.width/1.3
                    tfheight: mainrectangle.height/17

                    tffocus: false

                    textfieldpixel: mainrectangle.height/45
                    valid:  RegExpValidator { regExp: /[a-zA-Z ]+/}
                }
                Textcustamized{
                    id:agentnumber
                    rectwidth: mainrectangle.width/2
                    rectheight: mainrectangle.height/22
                    rectext: qsTr("Mobile number")+MyTrans.mylngstring
                    txtfldspacing: 6
                    textbold: true
                    tfplaceholder: "10 Digit mobile number"
                    inputhidden: Qt.ImhDigitsOnly

                    //                     tfborder: "white"
                    tfwidth: mainrectangle.width/1.3
                    tfheight: mainrectangle.height/17
                    tffocus: false
                    mxlength: 10
                    textfieldpixel: mainrectangle.height/45
                }


                Textcustamized{
                    id:branch
                    rectwidth: mainrectangle.width/2
                    rectheight: mainrectangle.height/22
                    rectext: qsTr("Branch")+MyTrans.mylngstring
                    txtfldspacing: 6
                    //textcolor: "white"
                    textbold: true
                    mxlength:10
                    tfplaceholder: "Max of 10 Character"
                    tfwidth: mainrectangle.width/1.3
                    tfheight: mainrectangle.height/17
                    tffocus: false
                    // tfborder: "white"
                    textfieldpixel: mainrectangle.height/45
                    valid:  RegExpValidator { regExp: /[a-zA-Z ]+/}
                }
                Textcustamized{
                    id:agentpassword
                    rectwidth: mainrectangle.width/2
                    rectheight: mainrectangle.height/22
                    rectext: qsTr("password")+MyTrans.mylngstring
                    txtfldspacing: 6
                    tfplaceholder: "Max of 8-Digit password"
                    mxlength:8
                    hide:TextInput.Password
                    inputhidden: Qt.ImhDigitsOnly
                    textbold: true
                    tfwidth: mainrectangle.width/1.3
                    tfheight: mainrectangle.height/17
                    tffocus: false
                    textfieldpixel: mainrectangle.height/45

                    Image {
                        id: hidepassword2
                        anchors.left: parent.left
                        anchors.leftMargin: mainrectangle.width/1.6
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/1.1
                        source: "qrc:/hideimage-removebg-preview.png"
                        width:mainrectangle.width/6
                        height: mainrectangle.height/12
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                unhidepassword2.visible=true
                                hidepassword2.visible=false
                                agentpassword.hide=TextInput.Normal



                            }
                        }
                    }
                    Image {
                        id: unhidepassword2
                        visible: false
                        anchors.left: parent.left
                        anchors.leftMargin: mainrectangle.width/1.55
                        anchors.top: parent.top
                        anchors.topMargin: parent.height/1.05
                        source: "qrc:/showpassword-removebg-preview.png"
                        width:mainrectangle.width/9
                        height: mainrectangle.height/13
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                hidepassword2.visible=true
                                unhidepassword2.visible=false
                                agentpassword.hide=TextInput.Password
                            }
                        }
                    }
                }

            }
            Text {
                anchors.top: parent.top
                anchors.topMargin: mainrectangle.height/1.7
                anchors.left: parent.left
                anchors.leftMargin: mainrectangle.width/6
                text: qsTr("password should be in digits only")+MyTrans.mylngstring
                font.bold: true
                color: "black"

                font.pixelSize: mainrectangle.height/53
            }

            Rectangle{
                anchors.top: parent.top
                anchors.topMargin: mainrectangle.height/1.6
                anchors.horizontalCenter: parent.horizontalCenter
                width: mainrectangle.width/2
                height: mainrectangle.height/16
                color: "#003CBE"
                // border.width: mainrectangle.height/250
                radius: mainrectangle.height/58
                //border.color: "white"
                Text{
                    text: qsTr("Submit")+MyTrans.mylngstring
                    color: "white"
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(cmbtext.text=="PIGMY"){

                            if(agentname.tfidDisplayText.localeCompare("")==0){
                                errormessage.title=qsTr("Enter the agent name")+MyTrans.mylngstring
                                errormessage.open();
                            }
                            else if(agentnumber.tfidDisplayText.localeCompare("")==0||agentnumber.tfidDisplayText2.length<10){
                                errormessage.title=qsTr("Enter the agent number")+MyTrans.mylngstring
                                errormessage.open();
                            }
                            else if(branch.tfidDisplayText.localeCompare("")==0){
                                errormessage.title=qsTr("Enter the branch")+MyTrans.mylngstring
                                errormessage.open();
                            }
                            else if(agentpassword.tfidDisplayText.localeCompare("")==0){
                                errormessage.title=qsTr("Enter the Agent password")+MyTrans.mylngstring
                                errormessage.open();
                            }else{

                                age.setAgentwork(cmbtext.text);
                                age.setAgentname(agentname.tfidDisplayText2);
                                age.setAgent_mobno(agentnumber.tfidDisplayText2);
                                age.setAgent_branch(branch.tfidDisplayText2);
                                age.setAgent_password(agentpassword.tfidDisplayText2);
                                Receivedata.agentaddingdetails(age);
                                agentname.tfidDisplayText2=""
                                agentnumber.tfidDisplayText2=""
                                branch.tfidDisplayText2=""
                                agentpassword.tfidDisplayText2=""
                                errormessage.title=qsTr("Agent added sucessfully")+MyTrans.mylngstring
                                errormessage.open();
                                console.log("______________",cmbtext.text, agentname.tfidDisplayText2,agentnumber.tfidDisplayText2,branch.tfidDisplayText2,agentpassword.tfidDisplayText2)
                            }
                        }
                        else if(cmbtext.text=="LOAN"){
                            if(agentname.tfidDisplayText.localeCompare("")==0){
                                errormessage.title=qsTr("Enter the agent name")+MyTrans.mylngstring
                                errormessage.open();
                            }
                            else if(agentnumber.tfidDisplayText.localeCompare("")==0){
                                errormessage.title=qsTr("Enter the agent number")+MyTrans.mylngstring
                                errormessage.open();
                            }
                            else if(branch.tfidDisplayText.localeCompare("")==0){
                                errormessage.title=qsTr("Enter the branch")+MyTrans.mylngstring
                                errormessage.open();
                            }
                            else if(agentpassword.tfidDisplayText.localeCompare("")==0){
                                errormessage.title=qsTr("Enter the Agent password")+MyTrans.mylngstring
                                errormessage.open();
                            }else{
                                age.setAgentwork(cmbtext.text);
                                age.setAgentname(agentname.tfidDisplayText2);
                                age.setAgent_mobno(agentnumber.tfidDisplayText2);
                                age.setAgent_branch(branch.tfidDisplayText2);
                                age.setAgent_password(agentpassword.tfidDisplayText2);
                                Receivedata.loanagentaddingdetails(age);
                                agentname.tfidDisplayText2=""
                                agentnumber.tfidDisplayText2=""
                                branch.tfidDisplayText2=""
                                agentpassword.tfidDisplayText2=""
                                errormessage.title=qsTr("Agent added sucessfully")+MyTrans.mylngstring
                                errormessage.open();
                            }
                        }

                    }

                }

            }
        }

    }

}
