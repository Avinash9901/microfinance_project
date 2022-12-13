import QtQuick 2.0

Item{
    width: rectanglewidth
    height: rectangleheight
    property int rectanglewidth;
    property int rectangleheight;
    property string rectcolor;
    property var rectangletext:mytxt.text;
    property int fontpixel;
    property string textcolor;
    property string fontfamily;
    property int rectangleradius;
    property string rectanglebordercolor;
    property int borderwidth;
    Rectangle{
        id:mainrect
        width: rectanglewidth
        height: rectangleheight
        color: rectcolor
        radius: rectangleradius
        border.color: rectanglebordercolor
        border.width: borderwidth
        Text {
            id:mytxt
            anchors.centerIn: parent
            text:rectangletext
            font.pixelSize: fontpixel
            color: textcolor
            font.family:  fontfamily
        }
    }
}
