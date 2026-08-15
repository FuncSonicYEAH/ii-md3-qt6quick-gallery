import QtQuick
import QtQuick.Layouts
import Components

ContentPage {
    ContentSection {
        title: "Buttons"
        icon: "smart_button"

        RowLayout {
            Layout.alignment: Qt.AlignLeft
            spacing: 12
            RippleButton {
                buttonText: "Enabled"
                Layout.preferredWidth: 100
            }
            RippleButton {
                buttonText: "Disabled"
                enabled: false
                Layout.preferredWidth: 100
            }
            RippleButton {
                buttonText: "Filled"
                colBackground: Appearance.colors.colPrimary
                colBackgroundHover: Appearance.colors.colPrimaryHover
                colBackgroundActive: Appearance.colors.colPrimaryActive
                colRipple: Appearance.colors.colPrimaryActive
                property color colOnBackground: Appearance.colors.colOnPrimary
                contentItem: StyledText {
                    anchors.centerIn: parent
                    text: "Filled"
                    color: Appearance.colors.colOnPrimary
                }
                Layout.preferredWidth: 100
            }
            RippleButton {
                buttonText: "Outlined"
                fillColor: "transparent"
                borderColor: Appearance.colors.colOutline
                colRipple: Appearance.colors.colSecondary
                property color colOnBackground: Appearance.colors.colOnSurface
                contentItem: StyledText {
                    anchors.centerIn: parent
                    text: "Outlined"
                    color: Appearance.colors.colOnSurface
                }
                Layout.preferredWidth: 100
            }
        }
    }

    ContentSection {
        title: "Icon buttons"
        icon: "icon_button"

        RowLayout {
            Layout.alignment: Qt.AlignLeft
            spacing: 8
            RippleButton {
                buttonRadius: Appearance.rounding.full
                implicitWidth: 40
                implicitHeight: 40
                fillColor: "transparent"
                contentItem: MaterialSymbol {
                    anchors.centerIn: parent
                    text: "favorite"
                    iconSize: 22
                    color: Appearance.colors.colOnSurface
                }
            }
            RippleButton {
                buttonRadius: Appearance.rounding.full
                implicitWidth: 40
                implicitHeight: 40
                fillColor: "transparent"
                contentItem: MaterialSymbol {
                    anchors.centerIn: parent
                    text: "search"
                    iconSize: 22
                    color: Appearance.colors.colOnSurface
                }
            }
            RippleButton {
                buttonRadius: Appearance.rounding.full
                implicitWidth: 40
                implicitHeight: 40
                fillColor: "transparent"
                contentItem: MaterialSymbol {
                    anchors.centerIn: parent
                    text: "add"
                    iconSize: 22
                    color: Appearance.colors.colOnSurface
                }
            }
        }
    }

    ContentSection {
        title: "Floating action buttons"
        icon: "add_circle"

        RowLayout {
            Layout.alignment: Qt.AlignLeft
            spacing: 12
            FloatingActionButton {}
            FloatingActionButton {
                iconText: "edit"
                expanded: true
                buttonText: "Compose"
            }
        }
    }

    ContentSection {
        title: "Group buttons"
        icon: "segment"

        RowLayout {
            Layout.alignment: Qt.AlignLeft
            GroupButton { buttonText: "Day" }
            GroupButton { buttonText: "Week" }
            GroupButton { buttonText: "Month" }
            GroupButton { buttonText: "Year" }
        }
    }
}
