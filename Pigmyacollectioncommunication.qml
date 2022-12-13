import QtQuick 2.0
import Qt.labs.platform 1.1
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.3
import customer 1.0
Item {
    signal transactionClicked();
    signal backtoviewcustomersClicked();
    property var minimumbalance;
    width: parent.width
    height: parent.height

    id:viewpageid
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
        anchors.topMargin: viewpageid.height/11
        source: "qrc:/pigmyimage.jfif"
        width: parent.width
    }
    Rectangle{
        width: viewpageid.width
        height: viewpageid.height/10
        color: "#dcdbca"
        Image {
            id: t1
            source: "qrc:/finalbackimage(1).png"
            width: viewpageid.width/8
            height: viewpageid.height/13
            anchors.verticalCenter: parent.verticalCenter
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    backtoviewcustomersClicked();
                }
            }
        }
        Text {
            font.pixelSize: viewpageid.height/19
            font.family: "Droid Sans Mono"
            anchors.centerIn: parent
            text: qsTr("Collection")+MyTrans.mylngstring
            color: "black"
        }
    }

    Rectangle{
        id:transactionid
        // visible: false
        width: viewpageid.width
        height: viewpageid.height/1.3
        color: "white"
        border.width: viewpageid.width/230
        border.color: "black"
        anchors.top: parent.top
        anchors.topMargin: viewpageid.height/4.15

        Column{
            anchors.right: parent.right
            anchors.rightMargin:viewpageid.width/2.3
            anchors.top: parent.top
            anchors.topMargin: viewpageid.height/7.1
            spacing: viewpageid.height/15
            Textcustamized{
                id:customeramount
                rectwidth  : viewpageid.width/9
                rectheight:  viewpageid.height/24
                fontsize: viewpageid.width/20
                tffocus:false
                rectext: qsTr("Amount *")+MyTrans.mylngstring
                textfieldpixel: viewpageid.height/26
                tfwidth: viewpageid.width/2
                tfheight: viewpageid.height/18

                inputhidden: Qt.ImhDigitsOnly
            }
            Textcustamized{
                id:amount_interest
                rectwidth  : viewpageid.width/9
                rectheight:  viewpageid.height/24
                fontsize: viewpageid.width/20
                rectext: qsTr("Rate% *")+MyTrans.mylngstring
                textfieldpixel: viewpageid.height/26
                tfwidth: viewpageid.width/2
                tffocus:false
                tfheight: viewpageid.height/18
                inputhidden: Qt.ImhDigitsOnly
            }

            Textcustamized{
                id:datee
                rectwidth  : viewpageid.width/9
                rectheight:  viewpageid.height/24
                fontsize: viewpageid.width/20
                rectext: qsTr("Date")+MyTrans.mylngstring

                MouseArea{
                    anchors.fill: parent
                    onClicked: {

                    }
                }
                textfieldpixel: viewpageid.height/28
                tfwidth: viewpageid.width/2
                tfheight: viewpageid.height/18
                read:true
                textt: Qt.formatDate(calenderr.selectedDate, "dd-MM-yyyy");
            }
            Textcustamized{
                id:debittextfield
                rectwidth  : viewpageid.width/9
                rectheight:  viewpageid.height/24
                fontsize: viewpageid.width/20
                tffocus:false
                rectext: qsTr("Debit *")+MyTrans.mylngstring
                textfieldpixel: viewpageid.height/26
                tfwidth: viewpageid.width/2
                tfheight: viewpageid.height/18
                inputhidden: Qt.ImhDigitsOnly
            }
        }
        Row{

            anchors.left: parent.left
            anchors.leftMargin:viewpageid.width/6
            anchors.top: parent.top
            anchors.topMargin: viewpageid.height/1.6

            spacing: 17
            Rectangle{
                id:balancee
                width: viewpageid.width/2.9
                height: viewpageid.height/18
                color: "#ffb703"
                radius: viewpageid.height/100
                Text{
                    color: "black"
                    anchors.centerIn: parent
                    text: qsTr("Balance")+MyTrans.mylngstring
                    font.pixelSize:  viewpageid.height/36
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        customerbalance.tfidDisplayText2 =Agent2.readbalance();

                    }
                }
            }
            Textcustamized {
                id: customerbalance

                rectwidth  : viewpageid.width/19
                rectheight: 1
                fontsize: viewpageid.width/20
                textfieldpixel: viewpageid.height/26
                tfwidth: viewpageid.width/2.5
                tfheight: viewpageid.height/18
                read: true

            }
        }
        Column{
            anchors.top: parent.top
            anchors.topMargin: viewpageid.height/4.15
            anchors.left: parent.left
            anchors.leftMargin: viewpageid.width/18
            spacing: viewpageid.width/30
            Rectangle{
                id:depositeclick
                width: viewpageid.width/2.9
                height: viewpageid.height/18
                color: "#003CBE"
                radius: viewpageid.height/100
                Text{
                    color: "white"
                    text: qsTr("Submit")+MyTrans.mylngstring
                    anchors.centerIn: parent
                    font.pixelSize:  viewpageid.height/36
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(customeramount.tfidDisplayText.localeCompare("")===0){
                            error.title=qsTr("Enter the amount")+MyTrans.mylngstring
                            error.open();
                        }else if(amount_interest.tfidDisplayText.localeCompare("")===0){
                            error.title=qsTr("Enter Rate of interest")+MyTrans.mylngstring
                            error.open();
                        }else {

                            _obj2.setdeposite(customeramount.tfidDisplayText)
                            _obj2.setpiggy_interest(amount_interest.tfidDisplayText)
                            _obj2.setdatse(datee.tfidDisplayText)
                            console.log("dateeeeeeeeeeeeeeeeeeee",datee.tfidDisplayText)
                            Receivedata.depositedtls(_obj2)
                            customeramount.tfidDisplayText2=""
                            amount_interest.tfidDisplayText2=""
                        }

                    }
                }
            }
            Rectangle{
                id:transactionclick
                width: viewpageid.width/2.9
                height: viewpageid.height/18
                color: "#003CBE"
                radius: viewpageid.height/100
                Text{
                    color: "white"
                    text: qsTr("Transaction")+MyTrans.mylngstring
                    anchors.centerIn: parent
                    font.pixelSize: viewpageid.height/36
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        transactionClicked();
                    }
                }
            }

            Rectangle{
                id:withdrawid
                width: viewpageid.width/2.9
                height: viewpageid.height/18
                color: "#003CBE"
                radius: viewpageid.height/100
                Text{
                    color: "white"
                    text: qsTr("Debit")+MyTrans.mylngstring
                    font.pixelSize: viewpageid.height/36
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(debittextfield.tfidDisplayText.localeCompare("")===0){
                            error.title=qsTr("Enter the withdraw amount")+MyTrans.mylngstring
                            error.open();
                        }else {

                            minimumbalance=Agent2.readbalance();
                            console.log(Agent2.readbalance())
                            if(debittextfield.tfidDisplayText>minimumbalance){
                                error.title=qsTr("insufficent balance")+MyTrans.mylngstring
                                error.open();

                            }else{
                                _obj2.setdeposite(debittextfield.tfidDisplayText*(-1))
                                _obj2.setdatse(datee.tfidDisplayText)
                                Receivedata.depositedtls(_obj2)
                                debittextfield.tfidDisplayText2=""
                            }
                        }

                    }
                }
            }

        }
        Row{
            id:accountholderid
            spacing: viewpageid.width/36
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: viewpageid.height/25

            Text {
                id: customer_name
                font.pixelSize:viewpageid.height/26
                color: "black"
                font.bold: true
                text: qsTr("A/C number -")+MyTrans.mylngstring


            }
            Text {
                id: customer_ac_number
                color: "blue"
                font.pixelSize:viewpageid.height/26
                font.bold: true
                text: Agent2.useraccount()
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
        target: Agent2
        function onUsernameChanged(){
            customer_name.text= Agent2.username()
        }
        function onUseraccountChanged(){
            customer_ac_number.text=Agent2.useraccount()
        }
    }
}
