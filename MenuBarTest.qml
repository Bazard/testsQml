import QtQuick 2.0
import QtQuick.Layouts 1.0


Rectangle{
	id: page
	width: 800; height: 600

    ColumnLayout{
        anchors.fill: parent

        Rectangle{
            id: menuBar
            width: parent.width; height: 150
            color: "darkgrey"
            Layout.fillHeight: true
            Layout.minimumHeight: 100
            z: 1

            Row{
                anchors.centerIn: parent
                spacing: 40

                Button{
                    id: fileButton
                    label: "File"
                    buttonColor: "green"
                    onButtonClick: menuListView.currentIndex = 0
                }

                Button{
                    id: editButton
                    label: "Edit"
                    buttonColor: "blue"
                    onButtonClick: menuListView.currentIndex = 1
                }

            }
        }


        Rectangle{
            id: labelList
            width: parent.width; //height: parent.height
            //anchors.top: menuBar.bottom
            Layout.minimumHeight: 100


            VisualItemModel{
                id: menuListModel

                FileMenu{
                    width: menuListView.width
                    height: menuBar.height
                    color: fileColor
                }

                EditMenu{
                    width: menuListView.width
                    height: menuBar.height
                    color: editColor
                }

            }


            ListView{
                id: menuListView

                // Anchors are set to react to window anchors
                anchors.fill: parent
                anchors.bottom: parent.bottom
                width: parent.width
                height: parent.height

                // The model contains the data
                model: menuListModel

                // Control the movement of the menu switching
                snapMode: ListView.SnapOneItem
                orientation: ListView.Horizontal
                boundsBehavior: Flickable.StopAtBounds
                flickDeceleration: 5000
                highlightFollowsCurrentItem: true
                highlightMoveDuration: 240
                highlightRangeMode: ListView.StrictlyEnforceRange
            }

        }
    }
}






