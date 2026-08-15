import QtQuick
import QtQuick.Layouts
import Components

ContentPage {
    ContentSection {
        title: "Text fields"
        icon: "text_fields"

        ColumnLayout {
            Layout.fillWidth: true
            spacing: 12
            MaterialTextField {
                Layout.fillWidth: true
                placeholderText: "Enter your name"
                text: "Kazarto"
            }
            MaterialTextField {
                Layout.fillWidth: true
                placeholderText: "Email address"
            }
            MaterialTextField {
                Layout.fillWidth: true
                placeholderText: "Disabled field"
                enabled: false
            }
        }
    }

    ContentSection {
        title: "Typed text"
        icon: "notes"

        ColumnLayout {
            Layout.fillWidth: true
            spacing: 8
            StyledText {
                text: "This is body text using the design system font stack."
                color: Appearance.colors.colOnSurface
                Layout.fillWidth: true
            }
            StyledText {
                text: "This is a muted subtext."
                color: Appearance.colors.colSubtext
                Layout.fillWidth: true
            }
            StyledText {
                text: "Headline"
                font.pixelSize: Appearance.font.pixelSize.larger
                font.weight: Font.Medium
                color: Appearance.colors.colOnSurface
            }
            StyledText {
                text: "Title (font family: " + Appearance.font.family.title + ")"
                font.family: Appearance.font.family.title
                font.pixelSize: Appearance.font.pixelSize.title
                color: Appearance.colors.colOnSurface
            }
        }
    }
}
