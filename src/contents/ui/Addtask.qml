import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.13 as Kirigami
import org.kde.exampledata 1.0


Kirigami.OverlaySheet {
    id: addTaskSheet

    property int index: -1
    property alias name: nameField.text

    signal added(Qstring name)
    signal removed(int index)


    header: Kirigami.Heading {
        text: i18nc("@title:window", "Add Team Name")
    }

    ColorStore
    {
    id: coloredstore
    }

    Kirigami.FormLayout {
        Controls.TextField {
            id: nameField
            Kirigami.FormData.label: i18nc("@label:textbox", "Task Name:")
            placeholderText: i18n("Task name (required)")
            onAccepted: descriptionField.forceActiveFocus()
        }
        Controls.Button {
            id: doneButton
            Layout.fillWidth: true
            text: i18nc("@action:button", "Done")
            enabled: nameField.text.length > 0
            onClicked: {
                addTaskSheet.added
                        (
                            nameField.text




                        );
                close();
            }
        }
    }
}
