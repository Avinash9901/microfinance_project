//import QtQuick 2.15
import QtQuick 2.14
import QtQuick.Controls 2.15
import MyLanguage 1.0
//import Qt.labs.platform 1.1
import QtGraphicalEffects 1.0
//import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.3
Item{
    property var checkAdmincrediantleschanged;
    id:itemp
    anchors.fill: parent
    MessageDialog {
        id:error
        width: window2.width/1.2
        height: window2.height/5
        standardButtons:StandardButton.Ok
    }

    checkAdmincrediantleschanged: Agent2.checkAdminCredentialschanged();
    Component.onCompleted: {
        if(checkAdmincrediantleschanged){
            console.log("changed of admin credentials");
        }else{
            error.title=qsTr("Admin name-abc,Password-123 after you can change")+MyTrans.mylngstring
            error.open();
            console.log("not changed of admin credentials");
        }

    }

    property int works1;
    property int works2;
    property var admin;
    //    property var work2:worklogin.logininformationforLoan();
    signal submit2Clicked();
    //signal addcustomerClicked();
    signal loanpageClicked();
    signal signuppageClicked();
    signal adminpageClicked();
    property bool lang:false

    Image {
        id:window2
        width: parent.width
        height: parent.height
        source: "qrc:/finalloginimage.jpeg"
        Image {
            id: logo
            source: "qrc:/signuppagelogo.png"
            anchors.top: parent.top
            anchors.topMargin: window2.height/4.2
            width: window2.width/4
            height: window2.height/8.5
            anchors.horizontalCenter: window2.horizontalCenter
        }
        Text {
            id: logintext
            text: qsTr("Login")+MyTrans.mylngstring
            font.pixelSize: window2.height/22
            font.family: "Droid Sans Mono"
            anchors.horizontalCenter: window2.horizontalCenter
            anchors.top: window2.top
            anchors.topMargin: window2.height/2.75
            color: "black"
        }
        Rectangle{
            id:heading
            width: window2.width
            height: window2.height/10
            color: "transparent"
            anchors.top: parent.top
            anchors.topMargin: window2.height/17
            Text {
                id: nameofcompany
                text: qsTr("MICRO FINANCE")+MyTrans.mylngstring
                font.letterSpacing: 1.2
                font.pixelSize: window2.height/24
                font.family: "Times new roman"
                font.bold: true
                color: "white"

                style: Text.Raised; styleColor: "#DADADA"

                anchors.centerIn: parent
            }
        }
        Combocustamize{
            id:selectcombo
            anchors.top: parent.top
            anchors.topMargin: window2.height/2.16
            anchors.left: parent.left
            anchors.leftMargin: window2.width/12
            fontsizeofcombotxt:window2.height/40
            rectcmbwdth: window2.width/8
            rectcmbhght: window2.height/23
            rectcmbtxt: qsTr("Select")+MyTrans.mylngstring
            cmbwidth: window2.width/3.65
            cmbheight: window2.height/24
            cmbmodel1:["ADMIN","LOAN","PIGMY"]
        }
        Text {
            id: cmbtext
            visible: false
            text:  selectcombo.cmbcurrenttxt
        }

        Column{
            anchors.left: parent.left
            anchors.leftMargin: window2.width/12
            anchors.top: window2.top
            anchors.topMargin: window2.height/1.9
            spacing: window2.height/14
            Textcustamized{
                id:nametextfield
                rectwidth: window2.width/2
                textfieldleftpadding: 50
                rectheight: window2.height/23
                textcolor: "black"
                textbold: true
                rectext: qsTr("User")+MyTrans.mylngstring
                tfwidth: window2.width/1.2
                tfcolor: "white"
                tfborder: "black"
                textfldimagesource: "qrc:/usericon-removebg-preview.png"
                imagewidth: tfwidth/9.8
                imageheight: tfheight/1.6
                tfheight: window2.height/16
                textfieldpixel: window2.height/45
                valid:  RegExpValidator { regExp: /[a-zA-Z ]+/}
                txtfldspacing: 6
                tffocus: false
                mxlength: 20
                // txtLength: 20
            }
            Textcustamized{
                id:passwordtextfield
                rectwidth: window2.width/8
                rectheight: window2.height/23
                textbold: true

                textfieldleftpadding: 50
                rectext: qsTr("Password")+MyTrans.mylngstring
                tfwidth: window2.width/1.2
                tfheight: window2.height/16
                tffocus: false
                textfldimagesource: "qrc:/passwordimage-removebg-preview.png"
                imagewidth: tfwidth/7
                imageheight: tfheight
                textcolor: "black"
                tfcolor: "white"
                tfborder: "black"
                txtfldspacing: 6
                textfieldpixel: window2.height/45
                hide: TextInput.Password
                inputhidden: Qt.ImhDigitsOnly
                // valid : RegExpValidator { regExp: /[0-9]+/}
                mxlength:8
                Image {
                    id: hidepassword
                    anchors.left: parent.left
                    anchors.leftMargin: window2.width/1.45
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
                            passwordtextfield.hide=TextInput.Normal



                        }
                    }
                }
                Image {
                    id: unhidepassword
                    visible: false
                    anchors.left: parent.left
                    anchors.leftMargin: window2.width/1.4
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
                            passwordtextfield.hide=TextInput.Password
                        }
                    }
                }

            }
        }
        Row{
            anchors.top: parent.top
            anchors.topMargin: window2.height/1.27
            anchors.horizontalCenter: window2.horizontalCenter
            spacing: 5
            Rectangle{
                id:sumitid

                width: window2.width/2.5
                height: window2.height/18.5
                color: "#003CBE"
                radius: window2.height/58
                Text{
                    color: "white"
                    anchors.centerIn: parent
                    text:qsTr("Login")+MyTrans.mylngstring
                    font.pixelSize: window2.height/60
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(cmbtext.text == "PIGMY"){
                            works1=Agent2.validationofPiggyworker(cmbtext.text,nametextfield.tfidDisplayText,passwordtextfield.tfidDisplayText2)
                            if(works1){
                                //                            if(cmbtext.text=="PIGGY" && nametextfield.tfidDisplayText=="P" &&passwordtextfield.tfidDisplayText=="p1"){
                                console.log("piggy login sucessfull *******************",works1)
                                submit2Clicked();
                                //addcustomerClicked();
                            }
                            else{
                                error.title=qsTr("Error in details")+MyTrans.mylngstring
                                error.open()
                                console.log("failes")
                            }
                        }
                        else if(cmbtext.text == "LOAN"){
                            works2=Agent2.validationofLoanyworker(cmbtext.text,nametextfield.tfidDisplayText,passwordtextfield.tfidDisplayText2)
                            if(works2){
                                loanpageClicked();
                                console.log("loan login sucessfull *******************",works2)
                            }
                            else{
                                error.title=qsTr("Error in details")+MyTrans.mylngstring
                                error.open()
                                console.log("failes")
                            }
                        }
                        else if(cmbtext.text=="ADMIN"){
                            admin=Agent2.adminloginvalidation(nametextfield.tfidDisplayText2,passwordtextfield.tfidDisplayText2)
                            if(admin){
                                adminpageClicked();
                                console.log("admin loan login sucessfull *******************",admin)
                            }else{
                                error.title=qsTr("Error in details")+MyTrans.mylngstring
                                error.open()
                                console.log("failes")
                            }
                        }
                    }
                }

            }
            Rectangle{
                width: window2.width/2.5
                height: window2.height/18.5
                radius: window2.height/58
                // rectanglebordercolor: "black"
                color: "#003CBE"
                Text{
                    anchors.centerIn: parent
                    text: qsTr("Agent reset password")+MyTrans.mylngstring
                    font.pixelSize:  window2.height/60
                    color: "white"
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        signuppageClicked();
                    }
                }
            }
        }

        Row{
            anchors.top: parent.top
            anchors.topMargin: window2.height/1.06
            anchors.horizontalCenter: window2.horizontalCenter
            spacing: 8
            Text {
                text:qsTr( "Language  ")+MyTrans.mylngstring
                font.pixelSize: window2.height/35
                color: "white"
                // font.bold: true
            }

            Text {
                id:kannada
                text:qsTr( "ಕನ್ನಡ")+MyTrans.mylngstring
                font.pixelSize: window2.height/35
                color: "cyan"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        MyTrans.updateLanguage(MyLanguage.KAN)//+MyTrans.mylngstring
                        console.log("lang kannada",MyLanguage.KAN)
                        kannada.font.bold=true
                        english.font.bold=false
                        kannada.color="green"
                        english.color="cyan"

                    }
                }
            }
            Text{
                id:english
                text:qsTr( "English")+MyTrans.mylngstring
                font.pixelSize: window2.height/35
                color: "green"
                font.bold: true
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        MyTrans.updateLanguage(MyLanguage.ENG)+MyTrans.mylngstring
                        console.log("lang kannada",MyLanguage.ENG)
                        english.font.bold=true
                        kannada.font.bold=false
                        kannada.color="cyan"
                        english.color="green"
                    }
                }
            }
        }
    }
}

