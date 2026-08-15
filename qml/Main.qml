// Component gallery for the ported illogical-impulse "ii" Material 3 design system.
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window
import Components

ApplicationWindow {
    id: root

    visible: true
    title: "M3 Gallery — Material 3 component showcase"

    minimumWidth: 760
    minimumHeight: 520
    width: 1180
    height: 800
    color: Appearance.m3colors.m3background

    property var pages: [
        { name: "Buttons", icon: "smart_button", component: "gallery/ButtonsPage.qml" },
        { name: "Switches", icon: "toggle_on", component: "gallery/SwitchesPage.qml" },
        { name: "Sliders", icon: "tune", component: "gallery/SlidersPage.qml" },
        { name: "Progress", icon: "progress_activity", component: "gallery/ProgressPage.qml" },
        { name: "Inputs", icon: "text_fields", component: "gallery/InputsPage.qml" },
        { name: "Icons & Shapes", icon: "shapes", component: "gallery/IconsShapesPage.qml" },
    ]
    property int currentPage: 0

    ColumnLayout {
        anchors {
            fill: parent
            margins: 8
        }

        Item { // Titlebar
            Layout.fillWidth: true
            Layout.fillHeight: false
            implicitHeight: Math.max(titleText.implicitHeight, windowControlsRow.implicitHeight)
            StyledText {
                id: titleText
                anchors {
                    left: parent.left
                    verticalCenter: parent.verticalCenter
                    leftMargin: 12
                }
                color: Appearance.colors.colOnLayer0
                text: "M3 Gallery"
                font {
                    family: Appearance.font.family.title
                    pixelSize: Appearance.font.pixelSize.title
                }
            }
            RowLayout { // Window controls row
                id: windowControlsRow
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                spacing: 6

                RippleButton {
                    buttonRadius: Appearance.rounding.full
                    implicitWidth: 35
                    implicitHeight: 35
                    onClicked: root.close()
                    contentItem: MaterialSymbol {
                        anchors.centerIn: parent
                        horizontalAlignment: Text.AlignHCenter
                        text: "close"
                        iconSize: 20
                        color: Appearance.colors.colOnLayer0
                    }
                }
            }
        }

        RowLayout { // Window content with navigation rail and content pane
            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 8

            Item {
                Layout.fillHeight: true
                Layout.margins: 5
                implicitWidth: navRail.expanded ? 150 : 56
                Behavior on implicitWidth {
                    NumberAnimation {
                        duration: Appearance.animation.elementMoveFast.duration
                        easing.type: Easing.BezierSpline
                        easing.bezierCurve: Appearance.animation.elementMoveFast.bezierCurve
                    }
                }
                NavigationRail {
                    id: navRail
                    anchors {
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom
                    }
                    spacing: 10
                    expanded: root.width > 900

                    FloatingActionButton {
                        iconText: "palette"
                        buttonText: "Theme"
                        expanded: navRail.expanded
                        onClicked: Appearance.setDarkMode(!Appearance.darkmode)
                    }

                    Repeater {
                        model: root.pages
                        NavigationRailButton {
                            required property int index
                            required property var modelData
                            toggled: root.currentPage === index
                            onPressed: root.currentPage = index;
                            expanded: navRail.expanded
                            buttonIcon: modelData.icon
                            buttonText: modelData.name
                        }
                    }

                    Item {
                        Layout.fillHeight: true
                    }
                }
            }

            Rectangle { // Content container
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: Appearance.m3colors.m3surfaceContainerLow
                radius: Appearance.rounding.windowRounding - 8

        Loader {
            id: pageLoader
            anchors.fill: parent
            source: "gallery/ButtonsPage.qml"

            Connections {
                        target: root
                        function onCurrentPageChanged() {
                            switchAnim.complete();
                            switchAnim.start();
                        }
                    }

                    SequentialAnimation {
                        id: switchAnim

                        NumberAnimation {
                            target: pageLoader
                            properties: "opacity"
                            from: 1
                            to: 0
                            duration: 100
                            easing.type: Easing.BezierSpline
                            easing.bezierCurve: Appearance.animationCurves.emphasizedFirstHalf
                        }
                        ParallelAnimation {
                            PropertyAction {
                                target: pageLoader
                                property: "source"
                                value: root.pages[root.currentPage].component
                            }
                            PropertyAction {
                                target: pageLoader
                                property: "anchors.topMargin"
                                value: 20
                            }
                        }
                        ParallelAnimation {
                            NumberAnimation {
                                target: pageLoader
                                properties: "opacity"
                                from: 0
                                to: 1
                                duration: 200
                                easing.type: Easing.BezierSpline
                                easing.bezierCurve: Appearance.animationCurves.emphasizedLastHalf
                            }
                            NumberAnimation {
                                target: pageLoader
                                properties: "anchors.topMargin"
                                to: 0
                                duration: 200
                                easing.type: Easing.BezierSpline
                                easing.bezierCurve: Appearance.animationCurves.emphasizedLastHalf
                            }
                        }
                    }
                }
            }
        }
    }
}
