// Includes relevant modules used by the QML

import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.13 as Kirigami

Kirigami.ScrollablePage
{
    title: i18nc("@title", "Weekly Overview")

    actions
    {
        main: Kirigami.Action
        {
            icon.name: "go-home"
            onTriggered: applicationWindow().pageStack.replace("qrc:/todaystasks.qml")
            text: i18nc("@action:button", "Today's Tasks")
        }
    }
}
