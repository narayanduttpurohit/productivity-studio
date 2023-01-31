// Includes relevant modules used by the QML

import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.13 as Kirigami
import org.kde.example 1.0
import org.kde.exampledata 1.0




Kirigami.ScrollablePage
{

    title: i18nc("@title", "Today's Tasks")


    actions
    {

        contextualActions:[

            Kirigami.Action
            {
                icon.name: "bqm-add"
                text: i18nc("@action:button", "Task")
                onTriggered: openPopulateSheet()
              
            },

            Kirigami.Action
            {
                icon.name: "bqm-add"
                text: i18nc("@action:button", "Goal")
            },

            Kirigami.Action
            {
                icon.name: "view-calendar-month"
                onTriggered: applicationWindow().pageStack.replace("qrc:/weeklytasks.qml")
                text: i18nc("@action:button", "W")
            },

            Kirigami.Action
            {
                icon.name: "view-calendar-month"
                onTriggered: applicationWindow().pageStack.replace("qrc:/monthlytasks.qml")
                text: i18nc("@action:button", "M")
            },

            Kirigami.Action
            {
                icon.name: "view-calendar-month"
                onTriggered: applicationWindow().pageStack.replace("qrc:/yearlytasks.qml")
                text: i18nc("@action:button","Y")
            }
        ]
    }

    Addtask
    {
            id: addtask
            onAdded: ColorStore.
            onRemoved: todaystasksModel.remove(index, 1);

        }


   function openPopulateSheet(index = -1, listName = "")
    {
       addtask.index = index;
       addtask.name = listName;
       addtask.open()




     }



   Kirigami.CardsListView
   {
    id: clv
    model: kuchbhi
    delgate: Todaystasksdelegate{}
   }

    ListModel
    {
        id: kuchbhi
    }


}
