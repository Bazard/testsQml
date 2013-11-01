import QtQuick 2.0
import "TextArea.js" as Script

TextEdit {
    id: textEditor
    anchors.fill: parent
    width: parent.width
    height: parent.height
    color: "midnightblue"
    focus: true

    wrapMode: TextEdit.Wrap

    onCursorRectangleChanged: Script.ensureVisible(cursorRectangle)
}
