import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.12
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    function findme(mypoint)
    {

        for(var i=0;i<cl.children.length;i++)
        {
           for(var j=0;j<cl.children[i].children.length;j++)
           {
            var pt=Qt.point(mypoint.x,mypoint.y)
               var pt2=cl.mapToItem(cl.children[i].children[j],pt.x,pt.y)
         if(cl.children[i].children[j].objectName==="mous")
             continue
            if(cl.children[i].children[j].contains(pt2 ))
            {
                ches.x=cl.children[i].children[j].x
                ches.y=cl.children[i].y

            }
        }

        }

    }




    ColumnLayout
    { id:cl
        // anchors.fill: parent
        spacing: 0
        RowLayout
        {  spacing: 0
            objectName: "rl1"
            MyRect{id:r1;objectName: "r1"}
            MyRect{id:r2;color: "black";objectName: "r2"}
            MyRect{id:r3;objectName: "r3"}
        }
        RowLayout
        {  spacing: 0
            MyRect{id:r4;objectName: "r4";color: "black"}
            MyRect{id:r5;objectName: "r5"}
            MyRect{id:r6;objectName: "r6";color: "black"}
        }
        RowLayout
        {  spacing: 0
            MyRect{id:r7;objectName: "r7"}
            MyRect{id:r8;color: "black";objectName: "r8"}
            MyRect{id:r9;objectName: "r9"}
        }
                MouseArea{
                    id:dr
                   anchors.fill: parent
                    objectName: "mous"
                     drag.target: ches
                    onReleased:      {
                        console.log("hi")
                        findme(mouse)
                    }
                }
    }

    MyRect
    { id:ches
        color: "green"
//        Drag.active: dr.drag.active

    }
}
