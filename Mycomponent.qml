import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14
import Qt.labs.platform 1.1
import customer 1.0
Rectangle {
    property var info;
    signal submitClicked();
    signal loginbackClicked();
    anchors.fill: parent
    id:rectwindow1
    color: "#dcdbca"
    property var namesofagents;
    property var agebranchhess;
    MessageDialog {
        buttons: MessageDialog.Ok

        id:errordialog
    }
    Cust{
        id:_abc
    }
    Rectangle{
        id:heading
        width: rectwindow1.width
        height: rectwindow1.height/9
        color: "black"
        //  border.color: "white"
        Text {
            id: nameofcompany
            text: qsTr("PIGMY COLLECTION")+MyTrans.mylngstring
            font.family: "Droid Sans Mono"
            font.pixelSize: rectwindow1.height/27
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
    }


    Column{
        spacing:rectwindow1.height/18
        anchors.left:  parent.left
        anchors.leftMargin:rectwindow1.width/11
        anchors.top: parent.top
        anchors.topMargin: rectwindow1.height/3.9
        Textcustamized{
            id:name1
            rectwidth  : rectwindow1.width/9
            rectheight:  rectwindow1.height/21
            fontsize: rectwindow1.height/15
            rectext: qsTr("User name")+MyTrans.mylngstring
            tffocus: false
            tfwidth: rectwindow1.width/1.2
            tfheight: rectwindow1.height/17
            textfieldpixel: rectwindow1.height/38
            valid:  RegExpValidator { regExp: /[a-zA-Z ]+/}
             mxlength:18
             tfplaceholder: "Max of 18 Characters"

        }
        Textcustamized{
            id:mobno
            rectwidth  : rectwindow1.width/9
            rectheight:  rectwindow1.height/21
            fontsize: rectwindow1.width/15
            tffocus: false
            rectext: qsTr("Mobile number")+MyTrans.mylngstring
            tfwidth: rectwindow1.width/1.2
            tfheight: rectwindow1.height/17
            textfieldpixel: rectwindow1.height/38
              inputhidden: Qt.ImhDigitsOnly
            mxlength:  10

        }


        Textcustamized{
            id:adhar
            rectwidth  : rectwindow1.width/9
            tffocus: false
            rectheight:  rectwindow1.height/21
            fontsize: rectwindow1.width/15
            rectext: qsTr("Aadhar number")+MyTrans.mylngstring
            tfwidth: rectwindow1.width/1.2
            tfheight: rectwindow1.height/17
            textfieldpixel: rectwindow1.height/38
              inputhidden: Qt.ImhDigitsOnly
            mxlength:  12
        }
        Textcustamized{
            id:pan
            rectwidth  : rectwindow1.width/9
            rectheight:  rectwindow1.height/21
            tffocus: false
            fontsize: rectwindow1.width/15
            rectext: qsTr("Pan number")+MyTrans.mylngstring
            tfwidth: rectwindow1.width/1.2
            tfheight: rectwindow1.height/17
            textfieldpixel: rectwindow1.height/38
            valid : RegExpValidator { regExp: /[0-9a-zA-Z]+/}
            mxlength: 10
            //            }
        }
        Textcustamized{
            id:place
            rectwidth  : rectwindow1.width/9
            rectheight:  rectwindow1.height/21
            fontsize: rectwindow1.width/15
            tffocus: false
            rectext: qsTr("Address")+MyTrans.mylngstring
            //                tfidmain: place
            tfwidth: rectwindow1.width/1.2
            tfheight: rectwindow1.height/17
            textfieldpixel: rectwindow1.height/38
            valid : RegExpValidator { regExp: /[a-zA-Z]+/}
              mxlength:16
               tfplaceholder: "Max of 16 Characters"
        }
    }

    Row{
        anchors.horizontalCenter: rectwindow1.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: rectwindow1.height/1.2
        spacing: 10
        Rectangle{
            width: rectwindow1.width/4
            height: rectwindow1.height/17
            color: "#003CBE"
            radius: 17
            // border.color: "black"

            Text {
                id: btntxt
                anchors.centerIn: parent
                text: qsTr("Submit")+MyTrans.mylngstring
                font.pixelSize: rectwindow1.height/33
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    if(name1.tfidDisplayText.localeCompare("")===0){
                        errordialog.title=qsTr("ENTER THE NAME")+MyTrans.mylngstring
                        errordialog.open();

                    }

                    else if(mobno.tfidDisplayText.localeCompare("")===0||mobno.tfidDisplayText2.length<10){
                        errordialog.title=qsTr("ENTER THE MOB.NO")+MyTrans.mylngstring
                        errordialog.open();
                    }

                    else if(adhar.tfidDisplayText.localeCompare("")===0 ||adhar.tfidDisplayText2.length<12){
                        errordialog.title=qsTr("ENTER THE ADHAR")+MyTrans.mylngstring
                        errordialog.open();
                    }
                    else if(pan.tfidDisplayText.localeCompare("")===0 ||pan.tfidDisplayText2.length<10){
                        errordialog.title=qsTr("ENTER THE PAN")+MyTrans.mylngstring
                        errordialog.open();
                    }
                    else if(place.tfidDisplayText.localeCompare("")===0){
                        errordialog.title=qsTr("ENTER THE PLACE")+MyTrans.mylngstring
                        errordialog.open();
                    }
                    else{
                        console.log("in elsesdefrgthyjuki")
                        _abc.setCname(name1.tfidDisplayText)
                        _abc.setmob_no(mobno.tfidDisplayText)
                        _abc.setadhar_no(adhar.tfidDisplayText)
                        _abc.setpan_no(pan.tfidDisplayText)
                        _abc.setplace(place.tfidDisplayText)
                        _abc.setbranch(name.text)
                        _abc.setagents(name3.text)
                        Receivedata.customerDetailss(_abc)
                        name1.tfidDisplayText2=""
                        mobno.tfidDisplayText2=""
                        adhar.tfidDisplayText2=""
                        pan.tfidDisplayText2=""
                        place.tfidDisplayText2=""
                        errordialog.title=qsTr("Customer added sucessfully")+MyTrans.mylngstring
                        errordialog.open();

                    }
                }
            }
        }
        Rectangle{
            width: rectwindow1.width/4
            height: rectwindow1.height/17
            color: "#003CBE"
            radius: 17
            Text {
                id: btnclrtxt
                anchors.centerIn: parent
                text: qsTr("Clear")+MyTrans.mylngstring
                font.pixelSize: rectwindow1.height/33
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    name1.tfidDisplayText2=""
                    mobno.tfidDisplayText2=""
                    adhar.tfidDisplayText2=""
                    pan.tfidDisplayText2=""
                    place.tfidDisplayText2=""
                }
            }
        }
        Rectangle{
            width: rectwindow1.width/4
            height: rectwindow1.height/17
            color: "#003CBE"
            radius: 17
            Text {
                id: btnback
                anchors.centerIn: parent
                text: qsTr("Back")+MyTrans.mylngstring
                font.pixelSize: rectwindow1.height/33
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    loginbackClicked();
                }
            }
        }
    }
    Column{
        anchors.top: parent.top
        anchors.topMargin: rectwindow1.height/7
        Text {
            visible: false
            id: name
            text:mycombo.cmbcurrenttxt

        }
        Text {
            visible: false
            id: name3
            text:mycombo2.cmbcurrenttxt
        }
    }

    Columnformatcombocustamize {
        id:mycombo2
        anchors.left: parent.left
        anchors.leftMargin: rectwindow1.width/1.9
        anchors.top: parent.top
        anchors.topMargin: rectwindow1.height/7.9
        rectcmbwdth: rectwindow1.width/5
        rectcmbhght: rectwindow1.height/26
        rectcmbtxt: qsTr("Agents")+MyTrans.mylngstring
        cmbwidth: rectwindow1.width/2.5
        cmbheight: rectwindow1.height/17
        cmbmodel1: modell
        cmbaccept :   if(cmbpressed){
                          console.log("avinashhhh222")
                      }
    }

    ListModel{
        id:modell
        ListElement{
            name:"Agents"
        }
    }

    function agents(){
        namesofagents=totalagents.agentnames();
        for (var i=0;i<namesofagents.length;i++){
            modell.append({"name":namesofagents[i]})
            console.log("Agent NAmes_=-==-=\t",namesofagents[i])
        }
        console.log("agentsss==",namesofagents)
    }
    Component.onCompleted: {
        agents();
        agbranch();

    }
    Columnformatcombocustamize {
        anchors.left: parent.left
        anchors.leftMargin: rectwindow1.width/18
        anchors.top: parent.top
        anchors.topMargin: rectwindow1.height/7.9
        id:mycombo
        rectcmbwdth: rectwindow1.width/5
        rectcmbhght: rectwindow1.height/26
        rectcmbtxt: qsTr("Branch")+MyTrans.mylngstring

        cmbwidth: rectwindow1.width/2.5
        cmbheight: rectwindow1.height/17
        // cmbmodel1:["BRANCH1","BRANCH2","BRANCH3"]
        cmbmodel1: branchmodel
        cmbaccept :   if(cmbpressed){
                          console.log("avinashhhh")
                          // name1.tfidDisplayText2=name.text
                      }
    }
    ListModel{
        id:branchmodel
        ListElement{
            branch:"Branch"
        }
    }
    function agbranch(){
        agebranchhess=totalagents.agentbranches();
        for(var i=0;i<agebranchhess.length;i++){
            branchmodel.append({"branch":agebranchhess[i]})
            console.log("agent branches==="<<agebranchhess[i])
        }
    }
}

