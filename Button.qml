import QtQuick 2.0

Rectangle {
    id: simpleButton
    width: 150; height: 75

    property color buttonColor: "lightblue"
    property color onHoverColor: "gold"
    property color borderColor: "white"

    Text {
        id: buttonLabel
        anchors.centerIn: parent
        text: "Bouton"
    }

    signal buttonClick()
    	
    onButtonClick: {
    	console.log(buttonLabel.text + " clicked")
    }

    MouseArea{
    	id: buttonMouseArea

    	// Anchor all sides of the mouse area to the rectangle's anchors
    	anchors.fill: parent

    	// onClicked handles valid mouse button clicks
    	onClicked: buttonClick()

    	hoverEnabled: true
    	onEntered: parent.border.color = onHoverColor
    	onExited: parent.border.color = borderColor
    }

    // Determines the color of the button by using the conditional operator
    color: buttonMouseArea.pressed ? Qt.darker(buttonColor, 1.5) : buttonColor
}