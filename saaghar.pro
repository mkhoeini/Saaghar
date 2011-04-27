TEMPLATE = app
TARGET = Saaghar

DEPENDPATH += . build
INCLUDEPATH += . $UI_DIR

CONFIG	+= qt warn_off release

#for static building un-comment the following two lines
#CONFIG	+= static
#DEFINES += STATIC

QT += sql

# Input
HEADERS += mainwindow.h \
	SearchItemDelegate.h \
	SaagharWidget.h \
	QGanjoorDbBrowser.h \
	QGanjoorDbStuff.h \
	settings.h \
	version.h
FORMS += mainwindow.ui \
	settings.ui
SOURCES += main.cpp \
	mainwindow.cpp \
	SearchItemDelegate.cpp \
    SaagharWidget.cpp \
    QGanjoorDbBrowser.cpp \
	settings.cpp
	
RESOURCES += saaghar.qrc

TRANSLATIONS += saaghar_fa.ts

message("'make install' doesn't overwrite existing 'database file', do that manually!")

win32 {

win32-msvc*{
	DEFINES += D_MSVC_CC
	QTPLUGIN += qsqlite
}

win32-g++{
	DEFINES += D_MINGW_CC
}

RC_FILE = win.rc
	
target.path = Saaghar-Win
INSTALLS = target
utilities.path = Saaghar-Win
utilities.files = utilities/AUTHORS \
	utilities/CHANGELOG \
	utilities/COPYING \
	utilities/README \
	utilities/TODO \
	utilities/Saaghar-Manual.pdf \
	utilities/saaghar_fa.qm \
	utilities/qt_fa.qm \
	saaghar.ico

poetsImage.path = Saaghar-Win/poets_images
poetsImage.files = utilities/poets_images/*.png

INSTALLS += utilities \
	poetsImage
}

mac {
LOG = $$system(mkdir ~/Library/)
LOG += $$system(mkdir ~/Library/Saaghar)
LOG  += $$system(cp -n utilities/* ~/Library/Saaghar/)

CONFIG += link_prl x86
QMAKE_MAC_SDK=/Developer/SDKs/MacOSX10.5.sdk
QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.5

target.path = /Applications
INSTALLS = target
utilities.path = Contents/Resources
utilities.files = utilities/AUTHORS \
	utilities/CHANGELOG \
	utilities/COPYING \
	utilities/README \
	utilities/Saaghar-Manual.pdf \
	utilities/saaghar_fa.qm \
	utilities/qt_fa.qm \
	utilities/TODO

poetsImage.path = Contents/Resources/poets_images
poetsImage.files = utilities/poets_images/*.png
 
QMAKE_BUNDLE_DATA += utilities\
                     poetsImage
ICON = saaghar.icns
QMAKE_INFO_PLIST = Info.plist

message("'make uninstall' doesn't remove "$$(HOME)/Library/Saaghar" directory and its contents especially 'database file', do that manually!")
}

unix:!macx {
TARGET = saaghar
LOG = $$system(mkdir ~/.Pojh)
LOG += $$system(mkdir ~/.Pojh/Saaghar)
LOG  += $$system(cp -n utilities/* ~/.Pojh/Saaghar/)

PREFIX = /usr
DESKTOPDIR = $${PREFIX}/share/applications
ICONDIR = $${PREFIX}/share/pixmaps

target.path = $${PREFIX}/bin
INSTALLS = target

utilities.path = $${PREFIX}/share/saaghar
utilities.files = utilities/AUTHORS \
	utilities/CHANGELOG \
	utilities/COPYING \
	utilities/README \
	utilities/Saaghar-Manual.pdf \
	utilities/saaghar_fa.qm \
	utilities/qt_fa.qm \
	utilities/TODO

poetsImage.path = $${PREFIX}/share/saaghar/poets_images
poetsImage.files = utilities/poets_images/*.png

desktop.path = $${DESKTOPDIR}
desktop.files = utilities/Saaghar.desktop
INSTALLS += desktop \
            poetsImage \
            utilities

icon.path = $${ICONDIR}
icon.files = images/saaghar.png
INSTALLS += icon

message("'make uninstall' doesn't remove "$$(HOME)/.Pojh/Saaghar" directory and its contents especially 'database file', do that manually!")
}
