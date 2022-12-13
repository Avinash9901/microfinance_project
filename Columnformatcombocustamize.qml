import QtQuick 2.0
import  QtQuick.Controls 2.14
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3
//import QtQuick.Controls.Styles 1.4
Item {
    property int rectcmbwdth;
    property int rectcmbhght
    property var rectcmbtxt:rcttxt.text
    property int cmbwidth;
    property int cmbheight;
    property var cmbmodel1;
    property var cmbpressed:cmbcst.pressed
    property alias cmbcurrenttxt:cmbcst.currentText
    property var cmbaccept;
    property var fontsizeofcombotxt;
      property bool boldtext;
 anchors.fill: parent
    Column{
        spacing: 5
        anchors.fill: parent
        Rectangle{
            color: "transparent"
            width:rectcmbwdth
            height: rectcmbhght
            Text {
                id:rcttxt
                anchors.centerIn: parent
                font.pixelSize: fontsizeofcombotxt
                text: rectcmbtxt
               font.bold: true
            }
        }
        ComboBox {
            id:cmbcst
            editable: false
            width:  cmbwidth//rectwindow.width/5
            height:cmbheight   //rectwindow.height/11
            model:cmbmodel1
            onAccepted: cmbaccept
            background: Rectangle{
                width: cmbcst.width
                height: cmbcst.height
                border.color: "black"
                radius: 8
            }
        }
    }
}

