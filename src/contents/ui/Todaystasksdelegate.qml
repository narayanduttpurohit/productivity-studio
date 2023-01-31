import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.13 as Kirigami


Kirigami.AbstractCard
{
    id: todaystaskdelegate
    contentItem: Item {

        implicitWidth: delegateLayout.implicitWidth
        implicitHeight: delegateLayout.implicitHeight

        RowLayout
        {
            id: delegateLayout
            Kirigami.Heading
            {
            Layout.fillWidth: false
            text: name
            }

        }

    }
}
