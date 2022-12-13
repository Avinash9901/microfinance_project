import QtQuick 2.0
import Qt.labs.platform 1.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.3
import customer 1.0

Item {
    width: parent.width
    height: parent.height
    id:window3
    signal loantransactionClicked();
    signal gobacktocustomerdetails();
    MessageDialog{
        id:error
        buttons: MessageDialog.Ok
    }
    Cust{
        id:_obj2
    }
    Image {
        id: mainpigmyimage
        anchors.top: parent.top
        anchors.topMargin: window3.height/15
        source: "qrc:/loanmainimage.jfif"
        width: parent.width
    }
    Rectangle{
        width: window3.width
        height: window3.height/10
        color: "#dcdbca"
        Image {
            id: t1
            source: "qrc:/finalbackimage(1).png"
            width: window3.width/8
            height: window3.height/13
            anchors.verticalCenter: parent.verticalCenter
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    gobacktocustomerdetails();
                }
            }
        }
        Text {
            font.pixelSize: window3.height/23
            font.family: "Droid Sans Mono"
            anchors.centerIn: parent
            text: qsTr("Loan Sanction")+MyTrans.mylngstring
            color: "black"
        }
    }
    Rectangle{
        id:transactionid
        //visible: visibletruefortransaction
        width: window3.width
        height: window3.height
        color: "white"
        anchors.top: parent.top
        anchors.topMargin: window3.height/3.6
        border.width: window3.width/230
        border.color: "black"
        Text {
            id: payinterest
            anchors.left: parent.left
            anchors.leftMargin: window3.width/5
            anchors.top: parent.top
            anchors.topMargin: window3.height/5
            font.pixelSize:window3.height/17
            color: "orange"
            font.bold: true

        }

        Connections{

            target: Receivedata
            function onSendtoqmlChanged(){
                recoverintrest.tfidDisplayText2 =Receivedata.getInterestSendToqml()
            }
        }

        Column{
            anchors.right: parent.right
            anchors.rightMargin:window3.width/12
            anchors.top: parent.top
            anchors.topMargin: window3.height/7
            spacing: window3.width/8
            Textcustamized{
                id:loanamount
                rectwidth  : rectwindow.width/9
                rectheight:  rectwindow.height/24
                fontsize: rectwindow.width/20
                //txtfldspacing: 20
                tffocus:false
                rectext: qsTr("Loan *")+MyTrans.mylngstring
                textfieldpixel: rectwindow.height/23
                tfwidth: window3.width/2.2
                tfheight: window3.height/16
                inputhidden: Qt.ImhDigitsOnly
            }
            Textcustamized{
                id:loan_interest
                rectwidth  : rectwindow.width/9
                rectheight:  rectwindow.height/24
                fontsize: rectwindow.width/20
                // txtfldspacing: 20
                tffocus:false
                rectext: qsTr("Rate% *")+MyTrans.mylngstring
                textfieldpixel: rectwindow.height/23
                tfwidth: window3.width/2.2
                tfheight: window3.height/16
                inputhidden: Qt.ImhDigitsOnly
            }
            Textcustamized{
                id:loan_datee
                rectwidth  : rectwindow.width/9
                rectheight:  rectwindow.height/24
                fontsize: rectwindow.width/20
                // txtfldspacing: 20
                tffocus:false
                rectext: qsTr("Date")+MyTrans.mylngstring
                textfieldpixel: rectwindow.height/30
                tfwidth: window3.width/2.2
                tfheight: window3.height/16
                read:true
                textt: Qt.formatDate(calenderr.selectedDate, "dd-MM-yyyy");
            }

            Textcustamized{
                id:recoverintrest
                rectwidth  : rectwindow.width/9
                rectheight:  rectwindow.height/24
                fontsize: rectwindow.width/20
                tffocus:false
                //  txtfldspacing: 20
                rectext: qsTr("Recover *")+MyTrans.mylngstring
                textfieldpixel: rectwindow.height/23
                tfwidth: window3.width/2.2
                tfheight: window3.height/16
                tfplaceholder: "Interest"
                read:true
                //textt: Receivedata.getInterestSendToqml()
                valid: IntValidator {}

                Rectangle {
                    id:tt
                    color: "gray"
                    radius: 5
                    anchors.left: parent.left
                    anchors.leftMargin: window3.width/2.8
                    anchors.verticalCenter: recoverintrest.verticalCenter
                    width:window3.width/11
                    height:window3.height/28
                    Text{
                        text:qsTr("click")+MyTrans.mylngstring
                        anchors.centerIn: parent
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked:{
                            var res = loancustomerdetails.readloaninterest()
                            if( recoverintrest.tfidDisplayText ===""){

                                recoverintrest.textt  =res
                            }else/* if(  recoverintrest.tfidDisplayText ==="AV")*/{
                                recoverintrest.tfidDisplayText2 =""
                            }


                            console.log("RES====",res)
                        }
                    }
                }
                Component.onCompleted: {
                }

            }

            Textcustamized{
                id:receiveprincipal
                rectwidth  : rectwindow.width/2.2
                rectheight:  rectwindow.height/24
                fontsize: rectwindow.width/20
                // txtfldspacing: 20
                rectext: qsTr("Principal recover *")+MyTrans.mylngstring
                textfieldpixel: rectwindow.height/23
                tfwidth: window3.width/2.2
                tfheight: window3.height/16
                inputhidden: Qt.ImhDigitsOnly
            }

            Text {
                id: customerbalance
                font.pixelSize:window3.height/18

            }

        }

        Column{
            anchors.top: parent.top
            anchors.topMargin: window3.height/4
            anchors.left: parent.left
            anchors.leftMargin: window3.width/20
            spacing: window3.width/36
            Rectangle{
                id:depositeclick
                width: window3.width/2.9
                height: window3.height/18
                color: "#003CBE"
                radius: window3.height/100
                Text{
                    color: "white"
                    text: qsTr("Sanction")+MyTrans.mylngstring
                    // rectanglebordercolor: "black"
                    // borderwidth: window3.height/240
                    font.pixelSize: window3.height/36
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(loanamount.tfidDisplayText.localeCompare("")===0){
                            error.title=qsTr("Enter the amount")+MyTrans.mylngstring
                            error.open();
                        }else if(loan_interest.tfidDisplayText.localeCompare("")===0){
                            error.title=qsTr("Enter the rate")+MyTrans.mylngstring
                            error.open();
                        }

                        else {

                            _obj2.setloanamount(loanamount.tfidDisplayText)
                            _obj2.setloaninterest(loan_interest.tfidDisplayText)
                            _obj2.setdatse(loan_datee.tfidDisplayText)
                            _obj2.setprincipalreceive(1*0)
                            _obj2.setloaninterestreceive(1*0)
                            console.log("xscvbgg\n",loan_datee.tfidDisplayText)
                            //var rcv =  _obj2.principalreceive *(-1)
                            Receivedata.interestCalculation (_obj2)
                            //payinterest.visible=true

                            loanamount.tfidDisplayText2=""
                            loan_interest.tfidDisplayText2=""
                        }

                    }
                }
            }

            Rectangle{
                id:interest_recovery
                width: window3.width/2.9
                height: window3.height/18
                color: "#003CBE"
                radius: window3.height/100
                Text{
                    color: "white"
                    text: qsTr("Interest")+MyTrans.mylngstring
                    font.pixelSize:  window3.height/36
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(recoverintrest.tfidDisplayText.localeCompare("")===0){
                            error.title=qsTr("enter the interest")+MyTrans.mylngstring
                            error.open();
                        }else{
                            _obj2.setloanamount(1*0)
                            _obj2.setloaninterest(1*0)
                            _obj2.setloaninterestreceive(recoverintrest.tfidDisplayText)
                            _obj2.setdatse(loan_datee.tfidDisplayText)

                            // _obj2.setloanamount(loanamount.tfidDisplayText2)
                            Receivedata.interestCalculation(_obj2)
                            // Receivedata.insertloancalculatedinterest(_obj2)
                            recoverintrest.tfidDisplayText2=""

                        }
                    }
                }
            }

            Rectangle{
                id:withdrawid
                width: window3.width/2.9
                height: window3.height/18
                color: "#003CBE"
                radius: window3.height/100
                Text{
                    color: "white"
                    text: qsTr("Principal")+MyTrans.mylngstring
                    font.pixelSize: window3.height/36
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(receiveprincipal.tfidDisplayText.localeCompare("")===0){
                            error.title=qsTr("Enter the principal amount")+MyTrans.mylngstring
                            error.open();
                        }else{
                            _obj2.setprincipalreceive(receiveprincipal.tfidDisplayText)
                            _obj2.setdatse(loan_datee.tfidDisplayText)
                            //_obj2.calculatedinterest(1*0);
                            _obj2.setloanamount(loanamount.tfidDisplayText )*(-1)
                            _obj2.setloaninterestreceive(1*0);
                            Receivedata.interestCalculation(_obj2)
                            receiveprincipal.tfidDisplayText2=""
                            interest_recovery.tfidDisplayText2=""
                            //datee.tfidDisplayText2=""
                        }
                    }

                }
            }

            Rectangle{
                id:transactionclick
                width: window3.width/2.9
                height: window3.height/18
                color: "#003CBE"
                radius: window3.height/100
                Text{
                    color: "white"
                    text: qsTr("Transaction")+MyTrans.mylngstring
                    // rectanglebordercolor: "black"
                    // borderwidth: window3.height/240
                    font.pixelSize: window3.height/36
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        loantransactionClicked();
                    }
                }
            }
        }
        Row{
            id:accountholderid
            visible: visibleacholder
            spacing: window3.width/36
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: window3.height/25

            Text {
                id: customer_name
                //visible: visibleacholder
                font.pixelSize:window3.height/26
                color: "black"
                font.bold: true
                text: qsTr("A/C number -")+MyTrans.mylngstring//loanview.loanusername()

            }
            Text {
                visible: visibleacholder2
                id: customer_ac_number
                // visible: false
                color: "blue"
                font.pixelSize:window3.height/26
                font.bold: true
                text:loancustomerdetails.loanuser_accountnumber()//loanview.loanuser_accountnumber()
            }
        }

    }
    Calendar {
        id:calenderr
        visible: false
        anchors.centerIn: parent
        selectedDate: new Date()
        minimumDate: new Date(2022, 0, 1)
        maximumDate: new Date(2023, 0, 1)
        onClicked: {
            console.log(date)
            datee.tfidDisplayText2=Qt.formatDate(calenderr.selectedDate, "dd-MM-yyyy");
            calenderr.visible=false
        }
    }
    Connections{
        target: loancustomerdetails
        function onLoanuseraccountChanged(){
            customer_ac_number.text=loancustomerdetails.loanuser_accountnumber();
        }
    }
}
