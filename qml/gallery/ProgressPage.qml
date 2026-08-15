import QtQuick
import QtQuick.Layouts
import Components

ContentPage {
    ContentSection {
        title: "Linear progress"
        icon: "progress_activity"

        ColumnLayout {
            Layout.fillWidth: true
            spacing: 16
            StyledText {
                text: "Indeterminate"
                color: Appearance.colors.colOnSurfaceVariant
            }
            StyledProgressBar {
                Layout.fillWidth: true
            }
            StyledText {
                text: "Determinate"
                color: Appearance.colors.colOnSurfaceVariant
            }
            StyledProgressBar {
                Layout.fillWidth: true
                from: 0
                to: 100
                value: 66
            }
            StyledText {
                text: "Disabled"
                color: Appearance.colors.colOnSurfaceVariant
            }
            StyledProgressBar {
                Layout.fillWidth: true
                from: 0
                to: 100
                value: 40
                enabled: false
            }
        }
    }

    ContentSection {
        title: "Circular progress"
        icon: "donut_large"

        RowLayout {
            Layout.alignment: Qt.AlignLeft
            spacing: 24
            ColumnLayout {
                spacing: 8
                CircularProgress {
                    Layout.alignment: Qt.AlignHCenter
                }
                StyledText {
                    text: "Indeterminate"
                    color: Appearance.colors.colOnSurfaceVariant
                    Layout.alignment: Qt.AlignHCenter
                }
            }
            ColumnLayout {
                spacing: 8
                CircularProgress {
                    Layout.alignment: Qt.AlignHCenter
                    from: 0
                    to: 100
                    value: 75
                    diameter: 64
                    thickness: 6
                }
                StyledText {
                    text: "Determinate"
                    color: Appearance.colors.colOnSurfaceVariant
                    Layout.alignment: Qt.AlignHCenter
                }
            }
            ColumnLayout {
                spacing: 8
                CircularProgress {
                    Layout.alignment: Qt.AlignHCenter
                    from: 0
                    to: 100
                    value: 25
                    diameter: 64
                    thickness: 6
                    trackColor: Appearance.colors.colErrorContainer
                    progressColor: Appearance.colors.colError
                }
                StyledText {
                    text: "Error color"
                    color: Appearance.colors.colOnSurfaceVariant
                    Layout.alignment: Qt.AlignHCenter
                }
            }
        }
    }
}
