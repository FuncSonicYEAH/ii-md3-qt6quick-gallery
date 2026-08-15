import QtQuick
import QtQuick.Layouts
import QtQuick.Window
import Components

ContentPage {
    ContentSection {
        title: "Material symbols"
        icon: "palette"

        Flow {
            Layout.fillWidth: true
            Layout.preferredHeight: implicitHeight
            spacing: 10
            Repeater {
                model: ["home", "search", "settings", "notifications", "favorite",
                        "add", "close", "check", "dark_mode", "light_mode",
                        "mic", "volume_up", "bluetooth", "wifi", "battery_charging_full",
                        "palette", "smart_button", "toggle_on", "tune", "shapes"]
                Rectangle {
                    required property string modelData
                    width: 64
                    height: 64
                    radius: Appearance.rounding.small
                    color: Appearance.colors.colLayer1
                    border.color: Appearance.colors.colOutlineVariant
                    MaterialSymbol {
                        anchors.centerIn: parent
                        text: modelData
                        iconSize: 24
                        color: Appearance.colors.colOnLayer1
                    }
                }
            }
        }
    }

    ContentSection {
        title: "M3 squircle shapes"
        icon: "rounded_corner"

        RowLayout {
            Layout.alignment: Qt.AlignLeft
            spacing: 14
            Repeater {
                model: [
                    { text: "phone_iphone", shape: MaterialShape.Shape.Cookie9Sided, size: 72 },
                    { text: "email", shape: MaterialShape.Shape.Puffy, size: 64 },
                    { text: "star", shape: MaterialShape.Shape.SoftBurst, size: 72 },
                ]
                Item {
                    required property var modelData
                    required property int index
                    width: modelData.size
                    height: modelData.size

                    MaterialShape {
                        anchors.fill: parent
                        shape: modelData.shape
                        color: [Appearance.colors.colPrimaryContainer,
                                Appearance.colors.colSecondaryContainer,
                                Appearance.colors.colTertiaryContainer][index]
                    }
                    MaterialSymbol {
                        anchors.centerIn: parent
                        text: modelData.text
                        iconSize: 24
                        color: Appearance.m3colors.m3onSecondaryContainer
                    }
                }
            }
        }
    }

    ContentSection {
        title: "Theme tokens"
        icon: "color_lens"

        Grid {
            Layout.fillWidth: true
            Layout.preferredHeight: implicitHeight
            columns: 6
            spacing: 8
            Repeater {
                model: [
                    { name: "m3primary", color: Appearance.m3colors.m3primary },
                    { name: "m3secondary", color: Appearance.m3colors.m3secondary },
                    { name: "m3tertiary", color: Appearance.m3colors.m3tertiary },
                    { name: "m3error", color: Appearance.m3colors.m3error },
                    { name: "m3surface", color: Appearance.m3colors.m3surface },
                    { name: "colLayer2", color: Appearance.colors.colLayer2 },
                    { name: "colPrimaryContainer", color: Appearance.colors.colPrimaryContainer },
                    { name: "colSecondaryContainer", color: Appearance.colors.colSecondaryContainer },
                    { name: "colTertiaryContainer", color: Appearance.colors.colTertiaryContainer },
                    { name: "colErrorContainer", color: Appearance.colors.colErrorContainer },
                    { name: "colLayer0", color: Appearance.colors.colLayer0 },
                    { name: "colOutline", color: Appearance.colors.colOutline },
                ]
                ColumnLayout {
                    required property var modelData
                    spacing: 4
                    Rectangle {
                        Layout.preferredWidth: 56
                        Layout.preferredHeight: 56
                        radius: Appearance.rounding.small
                        color: modelData.color
                        border.color: Appearance.colors.colOutlineVariant
                    }
                    StyledText {
                        text: modelData.name
                        font.pixelSize: 10
                        color: Appearance.colors.colSubtext
                    }
                }
            }
        }
    }
}
