import QtQuick 2.0
import QtQuick.Controls 2.14
import customer 1.0
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.3
import QtGraphicalEffects 1.0
Item {
    Keys.onBackPressed:{
        console.log("in pigmy on back pressed signal is called")
        error.title= qsTr("Do you want to Logout?")
        error.open();
    }
    width: parent.width
    height: parent.height

    Cust{
        id:_obj2
    }
    signal addcustomerClicked();
    signal viewcustomerClicked();
    signal maincommunicationbackClicked();
    signal transactionClicked()
    property bool visibletrue:false
    property int validationss;
    property var minimumbalance;
    property string balance;
    property var adddeposite:0;
    MessageDialog{
        id:error
        width: window3.width/1.5
        height: window3.height/5
        standardButtons: StandardButton.Yes | StandardButton.No
        icon:StandardIcon.Question
        onYes:   maincommunicationbackClicked()
        onNo: error.visible=false
    }
    Rectangle {
        id:window3
        width: parent.width
        height: parent.height
        //source: "qrc:/loginimage.jpg"
        color: "white"
        Rectangle{
            id:heading
            width: rectwindow.width
            height: rectwindow.height/9
            color: "black"
            Text {
                id: nameofcompany
                text: qsTr("PIGMY COLLECTION")+MyTrans.mylngstring
                font.family: "Droid Sans Mono"
                font.pixelSize: rectwindow.height/27
                font.bold: true
                color: "white"
                anchors.centerIn: parent
            }
        }
        Image {
            id: mainpigmyimage
            anchors.top: parent.top
            anchors.topMargin: window3.height/9
            source: "qrc:/pigmyimage.jfif"
            width: parent.width
            // height: parent.height/2

        }
        Column{
            id:maincommunicationdetails
            spacing: 13
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: window3.height/3
            Rectangle{
                radius: window3.height/100
                width: window3.width/1.3
                height: window3.height/10
                color: "transparent"
                border.color: "black"
                border.width: window3.height/400
                Image {
                    //anchors.right: parent.right
                    id: name
                    width: window3.width/4
                    height: window3.height/14
                    anchors.left: parent.left
                    anchors.leftMargin: parent.width/1.6
                    anchors.verticalCenter: parent.verticalCenter
                    source: "qrc:/customeraddimagee-removebg-preview.png"
                }
                Text{
                    text: qsTr("customers+")+MyTrans.mylngstring
                    font.pixelSize:  window3.height/32
                    anchors.left: parent.left
                    anchors.leftMargin: parent.width/7.5
                    anchors.verticalCenter: parent.verticalCenter
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        addcustomerClicked();
                    }
                }
            }
            Rectangle{
                width: window3.width/1.3
                height: window3.height/15
                color: "transparent"
                radius: window3.height/100
                border.color: "black"
                border.width: window3.height/400
                Text{
                    text: qsTr("View customers")+MyTrans.mylngstring
                    font.pixelSize:  window3.height/32
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        viewcustomerClicked();
                    }
                }
            }
            Rectangle{
                width: window3.width/1.3
                height: window3.height/15
                color: "transparent"
                border.color: "black"
                radius: window3.height/100
                border.width: window3.height/400
                Image {
                    width: parent.width/6
                    height: parent.height/1.1
                    anchors.verticalCenter: parent.verticalCenter
                    source: "qrc:/logouimage-removebg-preview.png"
                }
                Text{
                    text: qsTr("Logout")+MyTrans.mylngstring
                    font.pixelSize: window3.height/32
                    anchors.centerIn: parent
                }


                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        // logoutmsg.open()
                        error.title= qsTr("Do you want to Logout?")
                        error.open();
                        // logoutpopup.open();

                    }
                }
            }
        }
    }


    Rectangle{
        id:transactionid
        visible: visibletrue
        width: window3.width
        height: window3.height
        color: "white"
        border.width: window3.width/230
        border.color: "black"
        anchors.top: parent.top
        anchors.topMargin: window3.height/6
        Image {
            id: t1
            source: "qrc:/back-removebg-preview.png"
            width: window3.width/7
            height: window3.height/12
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    transactionid.visible=false
                    maincommunicationdetails.visible=true
                    validationname.tfidDisplayText2=""
                    validationacnumber.tfidDisplayText2=""
                }
            }
        }

        Row{

            anchors.left: parent.left
            anchors.leftMargin:window3.width/6
            // anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: window3.height/1.6

            spacing: 17
            Rectangle{
                id:balancee
                width: window3.width/2.9
                height: window3.height/16
                color: "#ffb703"
                radius: window3.height/100
                Text{
                    color: "black"
                    anchors.centerIn: parent
                    text: qsTr("Balance")+MyTrans.mylngstring
                    //rectanglebordercolor: "black"
                    // borderwidth: window3.height/240
                    font.pixelSize:  window3.height/34
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

                rectwidth  : window3.width/19
                rectheight: 1
                fontsize: rectwindow.width/20
                textfieldpixel: rectwindow.height/23
                tfwidth: window3.width/2.5
                tfheight: window3.height/16
                read: true

            }
        }


        Column{
            anchors.top: parent.top
            anchors.topMargin: window3.height/4.15
            anchors.left: parent.left
            anchors.leftMargin: window3.width/18
            spacing: window3.width/30
            Rectangle{
                id:depositeclick
                width: window3.width/2.9
                height: window3.height/16
                color: "#003CBE"
                radius: window3.height/100
                Text{
                    color: "white"
                    text: qsTr("Submit")+MyTrans.mylngstring
                    anchors.centerIn: parent
                    font.pixelSize:  window3.height/34
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
                            // datee.tfidDisplayText2=""
                        }

                    }
                }
            }
            Rectangle{
                id:transactionclick
                width: window3.width/2.9
                height: window3.height/16
                color: "#003CBE"
                radius: window3.height/100
                Text{
                    color: "white"
                    text: qsTr("Transaction")+MyTrans.mylngstring
                    anchors.centerIn: parent
                    font.pixelSize: window3.height/34
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
                width: window3.width/2.9
                height: window3.height/16
                color: "#003CBE"
                radius: window3.height/100
                Text{
                    color: "white"
                    text: qsTr("Debit")+MyTrans.mylngstring
                    // rectanglebordercolor: "black"
                    // borderwidth: window3.height/240
                    font.pixelSize: window3.height/34
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
            // visible: visibleacholder
            spacing: window3.width/36
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: window3.height/25

            Text {
                id: customer_name
                // visible: visibleacholder
                font.pixelSize:window3.height/21
                color: "orange"
                font.bold: true
                text: Agent2.username()


            }
            Text {
                //visible: visibleacholder
                id: customer_ac_number
                // visible: false
                color: "blue"
                font.pixelSize:window3.height/21
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
