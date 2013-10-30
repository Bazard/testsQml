import QtQuick 2.0


Rectangle{
	id: page
	width: 800; height: 600
	color: "lightblue"


	Row{
		anchors.centerIn: parent
		spacing: parent.width/6

		Button{
			id: cutButton
			buttonColor: "lightgrey"
			label: "Cut"
		}

		Button{
			id: pasteButton
			buttonColor: "grey"
			label: "Paste"
		}

		Button{
			id: selectAllButton
			buttonColor: "darkgrey"
			label: "Select All"
		}
	}


}
