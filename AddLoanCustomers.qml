import QtQuick 2.0
//import QtQuick.Controls 1.4
import QtQuick.Layouts 1.14
import QtQuick.Controls 2.14
import Qt.labs.platform 1.1
import customer 1.0

Rectangle {
    id:rectwindow
    color: "#dcdbca"
    property var info;
    signal submitClicked();
    signal loginbackClicked();
    signal loanbackClicked();
    property var agentnames;
    property var agentbranches;
    anchors.fill: parent
    MessageDialog{
        buttons: MessageDialog.Ok
        id:errordialog
    }
    Rectangle{
        id:heading
        width: rectwindow.width
        height: rectwindow.height/9
        color: "black"
        Text {
            id: nameofcompany
            text: qsTr("LOAN SANCTION")//+MyTrans.mylngstring
            font.pixelSize: rectwindow.height/27
            font.bold: true
            font.family: "Droid Sans Mono"
            color: "white"
            anchors.centerIn: parent
        }
    }
    Cust{
        id:_abc
    }

    Column{
        spacing: rectwindow.height/18
        anchors.left:  parent.left
        anchors.leftMargin:rectwindow.width/11
        anchors.top: parent.top
        anchors.topMargin: rectwindow.height/3.9
        Textcustamized{
            id:name1
            rectwidth  : rectwindow.width/9
            rectheight:  rectwindow.height/21
            fontsize: rectwindow.height/15
            rectext: qsTr("User name")+MyTrans.mylngstring
            tffocus: false
            //                tfidmain: name1
            tfwidth: rectwindow.width/1.2
            tfheight: rectwindow.height/17
            textfieldpixel: rectwindow.height/38
            mxlength:18
            tfplaceholder: "Max of 18 Characters"
            valid:  RegExpValidator { regExp: /[a-zA-Z ]+/}          //  /^[a-zA-Z ]*$/
        }
        Textcustamized{
            id:mobno
            rectwidth  : rectwindow.width/9
            rectheight:  rectwindow.height/21
            fontsize: rectwindow.width/15
            rectext: qsTr("Mobile number")+MyTrans.mylngstring
            //                tfidmain: mobno
            tfwidth: rectwindow.width/1.2
            tffocus: false
            tfheight: rectwindow.height/17
            // tfplaceholder: "Enter mobile no"
            textfieldpixel: rectwindow.height/38
            inputhidden: Qt.ImhDigitsOnly
            mxlength:  10

        }
        Textcustamized{
            id:adhar
            rectwidth  : rectwindow.width/9
            rectheight:  rectwindow.height/21
            fontsize: rectwindow.width/15
            rectext: qsTr("Aadhar number")+MyTrans.mylngstring
            tffocus: false
            tfwidth: rectwindow.width/1.2
            tfheight: rectwindow.height/17
            textfieldpixel: rectwindow.height/38
            inputhidden: Qt.ImhDigitsOnly

            mxlength:  12
        }
        Textcustamized{
            id:pan
            rectwidth  : rectwindow.width/9
            rectheight:  rectwindow.height/21
            fontsize: rectwindow.width/15
            tffocus: false
            rectext: qsTr("Pan number")+MyTrans.mylngstring
            //                tfidmain: pan
            tfwidth: rectwindow.width/1.2
            tfheight: rectwindow.height/17
            textfieldpixel: rectwindow.height/38
            valid : RegExpValidator { regExp: /[0-9a-zA-Z]+/}
            mxlength: 10
            //            }
        }
        Textcustamized{
            id:place
            rectwidth  : rectwindow.width/9
            rectheight:  rectwindow.height/21
            fontsize: rectwindow.width/15
            tffocus: false
            rectext: qsTr("Address")+MyTrans.mylngstring
            //                tfidmain: place
            tfwidth: rectwindow.width/1.2
            tfheight: rectwindow.height/17
            //  tfplaceholder: "Enter the place"
            textfieldpixel: rectwindow.height/38
            mxlength:16
            tfplaceholder: "Max of 16 Characters"
            valid : RegExpValidator { regExp: /[a-zA-Z]+/}
        }
    }

    Row{
        anchors.horizontalCenter: rectwindow.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: rectwindow.height/1.2
        spacing: 10
        Rectangle{
            width: rectwindow.width/4
            height: rectwindow.height/17
            color: "#003CBE"
            radius: 17
            //  border.color: "black"
            Text {
                id: btntxt
                anchors.centerIn: parent
                text: qsTr("Submit")+MyTrans.mylngstring
                font.pixelSize: rectwindow.height/33
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
                        //                    console.log("in elsesdefrgthyjuki")
                        //                    avi.customerdetails(_abc.adhar_no)
                        //                        _abc.customerdetails()
                        Receivedata.loanCustomerDetails(_abc)
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
            width: rectwindow.width/4
            height: rectwindow.height/17
            color: "#003CBE"
            radius: 17
            Text {
                id: btnclrtxt
                anchors.centerIn: parent
                text: qsTr("Clear")
                font.pixelSize: rectwindow.height/33
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
            width: rectwindow.width/4
            height: rectwindow.height/17
            color: "#003CBE"
            radius: 17
            // border.color: "black"
            Text {
                id: btnback
                anchors.centerIn: parent
                text: qsTr("Back")
                font.pixelSize: rectwindow.height/33
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    loanbackClicked();
                }
            }
        }
    }
    Column{
        spacing: 20
        //anchors.centerIn: parent
        anchors.top: parent.top
        anchors.topMargin: rectwindow.height/4.1
        anchors.right: parent.right
        anchors.rightMargin: rectwindow.width/1.4
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
    Columnformatcombocustamize{
        id:mycombo
        anchors.left: parent.left
        anchors.leftMargin: rectwindow.width/18
        anchors.top: parent.top
        anchors.topMargin: rectwindow.height/7.9
        rectcmbwdth: rectwindow.width/5
        rectcmbhght: rectwindow.height/26
        rectcmbtxt: qsTr("Branch")+MyTrans.mylngstring
        cmbwidth: rectwindow.width/2.5
        cmbheight: rectwindow.height/17
        cmbmodel1:myloanmodelbranches//["BRANCH1","BRANCH2","BRANCH3"]
        cmbaccept :   if(cmbpressed){
                          console.log("avinashhhh")
                      }
    }
    ListModel{
        id:myloanmodelbranches
        ListElement{
            branches:"Branch"
        }
    }
    function loanagentbranches(){
        agentbranches =totalagents.loanagentbranches();
        for(var i=0;i<agentbranches.length;i++){
            myloanmodelbranches.append({"branches":agentbranches[i]})
            console.log("agent branches of loan==="<<agentbranches[i])
        }
    }
    Columnformatcombocustamize{
        id:mycombo2
        anchors.left: parent.left
        anchors.leftMargin: rectwindow.width/1.9
        anchors.top: parent.top
        anchors.topMargin: rectwindow.height/7.9
        rectcmbwdth: rectwindow.width/5
        rectcmbhght: rectwindow.height/26
        rectcmbtxt: qsTr("Agents")+MyTrans.mylngstring
        cmbwidth: rectwindow.width/2.5
        cmbheight: rectwindow.height/17
        cmbmodel1:myloanmodel //["AGENT1","AGENT2","AGENT3"]
        cmbaccept :   if(cmbpressed){
                          console.log("avinashhhh222")
                          // name1.tfidDisplayText2=name.text
                      }
    }
    ListModel{
        id:myloanmodel
        ListElement{
            name:"Agents"
        }
    }
    function loanagents(){
        agentnames=totalagents.loanagentnames();
        for(var i=0;i<agentnames.length;i++){
            myloanmodel.append({"name":agentnames[i]})
            console.log("agent names of loan==="<<agentnames[i])
        }
    }
    Component.onCompleted: {
        loanagents();
        loanagentbranches();

    }
}




