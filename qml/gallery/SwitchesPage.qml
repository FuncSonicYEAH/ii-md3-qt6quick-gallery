import QtQuick
import QtQuick.Layouts
import Components

ContentPage {
    ContentSection {
        title: "Switches"
        icon: "toggle_on"

        ColumnLayout {
            Layout.fillWidth: true
            spacing: 10
            StyledSwitch { text: "Wi-Fi" }
            StyledSwitch { text: "Bluetooth"; checked: true }
            StyledSwitch { text: "Airplane mode"; checked: true }
            StyledSwitch {
                text: "Unavailable"
                enabled: false
            }
        }
    }

    ContentSection {
        title: "Checkboxes"
        icon: "check_box"

        ColumnLayout {
            Layout.fillWidth: true
            spacing: 10
            StyledCheckBox { text: "Remind me" }
            StyledCheckBox { text: "Send a copy"; checked: true }
            StyledCheckBox {
                text: "Disabled"
                enabled: false
            }
        }
    }

    ContentSection {
        title: "Radio buttons"
        icon: "radio_button_checked"

        ColumnLayout {
            Layout.fillWidth: true
            spacing: 10
            StyledRadioButton { text: "Default" }
            StyledRadioButton { text: "Checked"; checked: true }
            StyledRadioButton { text: "Disabled"; enabled: false }
        }
    }
}
