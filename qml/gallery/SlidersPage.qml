import QtQuick
import QtQuick.Layouts
import Components

ContentPage {
    ContentSection {
        title: "Sliders"
        icon: "tune"

        ColumnLayout {
            Layout.fillWidth: true
            spacing: 18
            ColumnLayout {
                spacing: 2
                StyledText {
                    text: "Volume"
                    color: Appearance.colors.colOnSurfaceVariant
                }
                StyledSlider {
                    Layout.fillWidth: true
                    from: 0
                    to: 100
                    value: 60
                }
            }
            ColumnLayout {
                spacing: 2
                StyledText {
                    text: "Brightness"
                    color: Appearance.colors.colOnSurfaceVariant
                }
                StyledSlider {
                    Layout.fillWidth: true
                    from: 0
                    to: 100
                    value: 40
                }
            }
            ColumnLayout {
                spacing: 2
                StyledText {
                    text: "Disabled"
                    color: Appearance.colors.colOnSurfaceVariant
                }
                StyledSlider {
                    Layout.fillWidth: true
                    from: 0
                    to: 100
                    value: 50
                    enabled: false
                }
            }
        }
    }

    ContentSection {
        title: "Range sliders"
        icon: "filter_tilt_shift"

        ColumnLayout {
            Layout.fillWidth: true
            spacing: 18
            StyledRangeSlider {
                Layout.fillWidth: true
                from: 0
                to: 100
                first.value: 25
                second.value: 75
            }
        }
    }
}
