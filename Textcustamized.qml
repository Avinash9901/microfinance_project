import QtQuick 2.0
import  QtQuick.Controls 2.14
Item {
    property int rectheight;
    property int rectwidth;
    property int fontsize;
    property string rectext; /*: t1.text; */
    property bool tffocus:true
    property int tfwidth;
    property int tfheight;
    property string tfplaceholder;
    property alias tfidDisplayText:tfid.displayText
    property alias tfidDisplayText2:tfid.text
    property alias valid:tfid.validator
    property alias mxlength:tfid.maximumLength
    property int txtfldspacing:rowid.spacing
    property int textfieldpixel;
    property alias read:tfid.readOnly
    property alias textt:tfid.text
    property alias hide:tfid.echoMode
    property alias enable:tfid.enabled
    property alias txtLength: tfid.length
    property alias tfborder:myid.border.color
    property alias tfcolor:myid.color
    property alias textcolor:t1.color
    property alias textfldimagesource:textfldimg.source
    property alias textbold:t1.font.bold
    property alias imagewidth:textfldimg.width
    property alias imageheight:textfldimg.height
    property alias inputhidden:tfid.inputMethodHints
    property alias textfieldrightpadding:tfid.rightPadding
    property alias textfieldleftpadding:tfid.leftPadding
    signal txtEdited()
    signal accept()
    height: rectheight
    width:rectwidth
    Column{
        id:rowid
        spacing: txtfldspacing
        Rectangle{
            width: rectwidth
            height: rectheight
            id:recc
            color: "transparent"
            Text {
                id:t1
                font.bold: true
                anchors.fill: parent
                horizontalAlignment: Text.left
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: rectwindow.height/40
                text: rectext

            }
        }

        TextField{
            id:tfid
            focus: tffocus
            width: tfwidth
            height:tfheight
            placeholderText:tfplaceholder
            validator: valid
            font.pixelSize: textfieldpixel
            onAccepted: {
                accept();
            }

            Rectangle{
                anchors.verticalCenter: parent.verticalCenter
                width: tfwidth/7
                height: tfheight/1.1
                color: "transparent"
                Image {
                    id: textfldimg
                    anchors.centerIn: parent
                }
            }
            background: Rectangle{
                id:myid
                width: tfid.width
                height: tfid.height
                radius: tfid.width/15
                border.color: "black"
                color: "transparent"
            }
            onTextEdited: {
                txtEdited()
            }
        }

    }
}
