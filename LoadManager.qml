import QtQuick 2.0

Item {

    height:parent.height
    width: parent.width
    Loader{
        id: myLoaderr
        anchors.fill: parent
        focus: true
        source:"qrc:/Welcomepage.qml"
    }
    Connections{
        ignoreUnknownSignals: true
        target: myLoaderr.item
        function onGotologinpage()
        {
            myLoaderr.source="qrc:/Agentslogin.qml"
            console.log("INSIDE third page");
        }

        function onSubmitClicked()
        {
            myLoaderr.source="qrc:/Maincommunication.qml"
            console.log("INSIDE third page");
        }
        function onSubmit2Clicked()
        {
            myLoaderr.source="qrc:/Maincommunication.qml"
            console.log("INSIDE fourth000 page");
        }
        function onAddcustomerClicked()
        {
            myLoaderr.source="qrc:/Mycomponent.qml"
            console.log("INSIDE fourth111 page");
        }
        function onViewcustomerClicked()
        {
            myLoaderr.source="qrc:/viewcustomers.qml"
            console.log("INSIDE fourth222 page");
        }
        function onViewbackClicked()
        {
            myLoaderr.source="qrc:/viewcustomers.qml"
            console.log("INSIDE fourth222 page");
        }
        function onViewbacktolancustomersClicked()
        {
            myLoaderr.source="qrc:/Loancustomersview.qml"
            console.log("INSIDE fourth222 page");
        }
        function onMaincommunicationbackClicked()
        {
            myLoaderr.source="qrc:/Agentslogin.qml"
            console.log("INSIDE fourth222 page");
        }
        function onLoginbackClicked()
        {
            myLoaderr.source="qrc:/Maincommunication.qml"
            console.log("INSIDE fourth222 page");
        }
        function onTransactionClicked()
        {
            myLoaderr.source="qrc:/ViewTransaction.qml"
            console.log("INSIDE transaction page");
        }
        function onTransactionbackClicked()
        {
            myLoaderr.source="qrc:/Pigmyacollectioncommunication.qml"
            //myLoaderr.item.visibletrue = true
            // myLoaderr.item.visibleacholder = true
            console.log("INSIDE transaction back to second page page");
        }
        function onLoanpageClicked()
        {
            myLoaderr.source="qrc:/Loansanctionpage.qml"
            console.log("INSIDE transaction page");
        }
        function onAddloancustomerClicked()
        {
            myLoaderr.source="qrc:/AddLoanCustomers.qml"
            console.log("INSIDE transaction page");
        }
        function onLoanbackClicked()
        {
            myLoaderr.source="qrc:/Loansanctionpage.qml"
            console.log("INSIDE transaction page");
        }
        function onLoansanctionbackClicked()
        {
            myLoaderr.source="qrc:/Agentslogin.qml"
            console.log("INSIDE transaction page");
        }
        function onViewloancustomerClicked()
        {
            myLoaderr.source="qrc:/Loancustomersview.qml"
            console.log("INSIDE transaction page");
        }
        function onLoanviewbackClicked()
        {
            myLoaderr.source="qrc:/Loansanctionpage.qml"
            console.log("INSIDE transaction page");
        }
        function onLoantransactionClicked()
        {
            myLoaderr.source="qrc:/ViewLoanTransaction.qml"
            //console.log("INSIDE transaction page");
        }
        function onLoantransactionbackClicked()
        {
            myLoaderr.source="qrc:/Loansanctioncommunication.qml"
            myLoaderr.item.visibletruefortransaction=true
            myLoaderr.item.visibleacholder=true
            myLoaderr.item.visibleacholder2=true

            //console.log("INSIDE transaction page");
        }
        function onSignuppageClicked(){
            myLoaderr.source="qrc:/Agentsignuppage.qml"
        }
        function onSignuppagebackClicked(){
            myLoaderr.source="qrc:/Agentslogin.qml"
        }
        function onAdminpageClicked(){
            myLoaderr.source="qrc:/AdminManagement.qml"
        }
        function onGobacktologinClicked(){
            myLoaderr.source="qrc:/Agentslogin.qml"
        }
        function onGobacktoadminpageClicked(){
            myLoaderr.source="qrc:/Adminviewdetails.qml"
        }
        function onViewpigmycustomerClicked(){
            myLoaderr.source="qrc:/AdminviewofPigmycustomers.qml"
        }
        function onGonextClicked(){
            myLoaderr.source="qrc:/Adminviewdetails.qml"
        }
        function onBacktoadminmainpageClicked(){
            myLoaderr.source="qrc:/AdminManagement.qml"
        }
        function onAdminviewloancustomerClicked(){
            myLoaderr.source="qrc:/AdminviewofLoancustomers.qml"
        }
        function onAdminloanviewbackClicked(){
            myLoaderr.source="qrc:/Adminviewdetails.qml"
        }
        function onTotalpigmuagentsvisClicked(){
            myLoaderr.source="qrc:/Pigmyagentlist.qml"
        }
        function onBacktoadminpagefrompigmyagents(){
            myLoaderr.source="qrc:/Adminviewdetails.qml"
        }

        function onTotalloanagentlist(){
            myLoaderr.source="qrc:/Loanagentlists.qml"
        }

        function onBacktoadminpagefromloanagents(){
            myLoaderr.source="qrc:/Adminviewdetails.qml"
        }
        function onViewalldetailsclicked(){
            myLoaderr.source="qrc:/Piggycustomersalldetails.qml"
        }
        function onViewbackClickedtomaincommunication(){
            myLoaderr.source="qrc:/Maincommunication.qml"
        }
        function onViewcollectionClicked(){
            myLoaderr.source="qrc:/Pigmyacollectioncommunication.qml"
        }
        function onBacktoviewcustomersClicked(){
            myLoaderr.source="qrc:/viewcustomers.qml"
        }
        function onGotoalldetailsofloancustomers(){
            myLoaderr.source="qrc:/ViewalldetailsofLoancustomers.qml"
        }
        function onGotoloansanctionpage(){
            myLoaderr.source="qrc:/Loansanctioncommunication.qml"
        }
        function onGobacktocustomerdetails(){
            myLoaderr.source="qrc:/Loancustomersview.qml"
        }
    }
}
