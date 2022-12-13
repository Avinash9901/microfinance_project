import QtQuick 2.0
import QtQuick.Controls 2.14
import customer 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.3

Item {
    //    id:mainMenu
    Keys.onBackPressed:{
        error.title=  qsTr("Do you want to Logout?")
        error.open();
    }
    anchors.fill: parent
    objectName: "mainMenu"
    Cust{
        id:_obj2
    }
    signal addloancustomerClicked();
    signal viewloancustomerClicked();
    signal loansanctionbackClicked();
    signal loantransactionClicked()
    property bool visibletruefortransaction:false
    property bool visibleacholder:true
    property bool visibleacholder2:true
    //  signal sendaccountno(int a);
    property var calculatedinterest;
    property int validationss;
    property var minimumbalance;
    property string balance;
    property var adddeposite:0;
    property var qttoqmlsideinterest:Receivedata.getInterestSendToqml();
    //    qttoqmlsideinterest
    MessageDialog{
        id:error
        width: window3.width/1.5
        height: window3.height/5
        standardButtons: StandardButton.Yes | StandardButton.No
        icon:StandardIcon.Question
        onYes:loansanctionbackClicked();
        onNo:error.visible=false
    }

    Rectangle {
        id:window3
        width: parent.width
        height: parent.height
        //  source: "qrc:/loginimage.jpg"
        color: "white"
        Rectanglecustamized{
            rectanglewidth: window3.width
            rectangleheight: window3.height/9
            rectcolor: "black"
            rectanglebordercolor: "black"
            rectangletext: qsTr("LOAN SANCTION")+MyTrans.mylngstring
            fontfamily: "Droid Sans Mono"
            fontpixel: window3.height/27
            textcolor: "white"
        }

        Image {
            id: loanmainimage
            source: "qrc:/loanmainimage.jfif"
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: parent.height/10
        }

        Column{
            id:maincommunicationid
            spacing: 13
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: window3.height/2.3
            Rectangle{
                width: window3.width/1.3
                height: window3.height/10
                radius: window3.height/100
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
                    font.pixelSize: window3.height/32
                    anchors.left: parent.left
                    anchors.leftMargin: parent.width/7.5
                    anchors.verticalCenter: parent.verticalCenter
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        addloancustomerClicked();
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
                    text: qsTr("View_customers")+MyTrans.mylngstring
                    font.pixelSize:  window3.height/32
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        viewloancustomerClicked();
                    }
                }
            }
            Rectangle{
                width: window3.width/1.3
                height: window3.height/15
                color: "transparent"
                radius: window3.height/100
                border.width: window3.height/400
                border.color: "black"
                Image {
                    width: parent.width/6
                    height: parent.height/1.1
                    anchors.verticalCenter: parent.verticalCenter
                    source: "qrc:/logouimage-removebg-preview.png"
                }
                Text{
                    text: qsTr("Logout")+MyTrans.mylngstring
                    font.pixelSize:  window3.height/32
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        error.title=qsTr("Do you want to Logout?")+MyTrans.mylngstring
                        error.open();

                    }
                }
            }
        }
    }


    Rectangle{
        id:transactionid
        visible: visibletruefortransaction
        width: window3.width
        height: window3.height
        color: "white"
        anchors.top: parent.top
        anchors.topMargin: window3.height/6
        border.width: window3.width/230
        border.color: "black"

        Image {
            id: t1
            source: "qrc:/finalbackimage(1).png"
            width: window3.width/7
            height: window3.height/12
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    maincommunicationid.visible=true
                    transactionid.visible=false
                    validationname.tfidDisplayText2=""
                    validationacnumber.tfidDisplayText2=""
                }
            }
        }

        Text {
            //spacing: window3.width/36
            id: payinterest
            // visible: false
            anchors.left: parent.left
            anchors.leftMargin: window3.width/5
            anchors.top: parent.top
            anchors.topMargin: window3.height/5
            // visible: visibleacholder
            font.pixelSize:window3.height/17
            color: "orange"
            font.bold: true
            //text: Receivedata.getInterestSendToqml()

        }

        Connections{

            target: Receivedata
            function onSendtoqmlChanged(){
                recoverintrest.tfidDisplayText2 =Receivedata.getInterestSendToqml()
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
                height: window3.height/16
                color: "#003CBE"
                radius: window3.height/100
                Text{
                    color: "white"
                    text: qsTr("Sanction")+MyTrans.mylngstring
                    font.pixelSize: window3.height/34
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
                height: window3.height/16
                color: "#003CBE"
                radius: window3.height/100
                Text{
                    color: "white"
                    text: qsTr("Interest")+MyTrans.mylngstring
                    font.pixelSize:  window3.height/34
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(recoverintrest.tfidDisplayText.localeCompare("")===0){
                            error.title="enter the interest"
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
                height: window3.height/16
                color: "#003CBE"
                radius: window3.height/100
                Text{
                    color: "white"
                    text: qsTr("Principal")+MyTrans.mylngstring
                    font.pixelSize: window3.height/34
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(receiveprincipal.tfidDisplayText.localeCompare("")===0){
                            error.title="Enter the amount"
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
                height: window3.height/16
                color: "#003CBE"
                radius: window3.height/100
                Text{
                    color: "white"
                    text: qsTr("Transaction")+MyTrans.mylngstring
                    font.pixelSize: window3.height/34
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
                visible: visibleacholder
                font.pixelSize:window3.height/25
                color: "orange"
                font.bold: true
                text: Agent2.loanusernamestore()//loanview.loanusername()

            }
            Text {
                visible: visibleacholder2
                id: customer_ac_number
                // visible: false
                color: "black"
                font.pixelSize:window3.height/25
                font.bold: true
                text: Agent2.loanuseracnumberstore()//loanview.loanuser_accountnumber()
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
}
