# qmlSamples
qmlSamples application is qt/qml based examples of :

* [Button](https://doc.qt.io/qt-6/qml-qtquick-controls-button.html)
* Status Bar
* Date Time using [Timer](https://doc.qt.io/qt-6/qml-qtqml-timer.html)
* Table view using [TableView](https://doc.qt.io/qt-6/qml-qtquick-tableview.html)
* List view using [ListModel](https://doc.qt.io/qt-6/qml-qtqml-models-listmodel.html)
* Tab view using [TabBar](https://doc.qt.io/qt-6/qml-qtquick-controls-tabbar.html) & [TabButton](https://doc.qt.io/qt-6/qml-qtquick-controls-tabbutton.html)
* Layout (Grid/row/column) using [GridView](https://doc.qt.io/qt-6/qml-qtquick-gridview.html) , [RowLayout](https://doc.qt.io/qt-6/qml-qtquick-layouts-rowlayout.html) & [ColumnLayout](https://doc.qt.io/qt-6/qml-qtquick-layouts-columnlayout.html)
* Dialog box using [MessageDialog](https://doc.qt.io/qt-5/qml-qtquick-dialogs-messagedialog.html)
* Label Clickable using [MouseArea](https://doc.qt.io/qt-6/qml-qtquick-mousearea.html)
* Chart View [Bar Chart](https://doc.qt.io/qt-6/qml-qtcharts-barseries.html)
* XML Read and create list view using [XmlListModel](https://doc.qt.io/qt-6/qml-qtqml-xmllistmodel-xmllistmodel.html)
* Progress Bar(Horizontal and Circular)
* Swipe view using [SwipeView](https://doc.qt.io/qt-6/qml-qtquick-controls-swipeview.html)
* RTSP Streamer using [Video](https://doc.qt.io/qt-5/qml-qtmultimedia-video.html)
* Analog Clock

## Dependencies install

		sudo apt update
		sudo apt install build-essential qt5-default qtdeclarative5-dev libqt5charts5-dev qtmultimedia5-dev libqt5multimedia5  libqt5multimediawidgets5
		sudo apt install qml-module-qtquick-dialog  qml-module-qt-labs-settings qml-module-qt-labs-folderlistmodel qml-module-qtcharts qml-module-qtquick-xmllistmodel qml-module-qtmultimedia
		

		
## cmake Build

		git clone https://github.com/aks-arise1600/qmlSamples.git
		cd qmlSamples
		mkdir cbuild && cd cbuild
		cmake ..
		make

## qmake Build

		git clone https://github.com/aks-arise1600/qmlSamples.git
		cd qmlSamples
		mkdir qbuild && cd qbuild
		qmake ..
		make
		
## Run
		cd <PATH_TO_BUILD>
		./qmlSamples
		
		
		
## References
1. [QML Applications](https://doc.qt.io/qt-6/qmlapplications.html)




