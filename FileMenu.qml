import QtQuick 2.0


Rectangle{
	id: page
	width: 800; height: 600
	color: "lightgreen"


	Row{
		anchors.centerIn: parent
		spacing: parent.width/6

		Button{
			id: loadButton
			buttonColor: "lightgrey"
			label: "Load"
		}

		Button{
			id: saveButton
			buttonColor: "grey"
			label: "Save"
		}

		Button{
			id: exitButton
			buttonColor: "darkgrey"
			label: "Exit"

			onButtonClick: Qt.quit()
		}
	}


}
