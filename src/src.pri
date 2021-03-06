DEPENDPATH += $$PWD
INCLUDEPATH += $$PWD

QT += sql network xml

# Input
HEADERS += \
    $$PWD/saagharwindow.h \
    $$PWD/searchitemdelegate.h \
    $$PWD/saagharwidget.h \
    $$PWD/qganjoordbbrowser.h \
    $$PWD/qganjoordbstuff.h \
    $$PWD/settings.h \
    $$PWD/searchresultwidget.h \
    $$PWD/searchpatternmanager.h \
    $$PWD/version.h \
    $$PWD/bookmarks.h \
    $$PWD/commands.h \
    $$PWD/outline.h \
    $$PWD/databaseupdater.h \
    $$PWD/nodatabasedialog.h \
    $$PWD/qtwin.h \
    $$PWD/registerationform.h \
    $$PWD/searchoptionsdialog.h \
    $$PWD/tabwidget.h

FORMS += \
    $$PWD/saagharwindow.ui \
    $$PWD/settings.ui \
    $$PWD/databaseupdater.ui \
    $$PWD/nodatabasedialog.ui \
    $$PWD/registerationform.ui \
    $$PWD/searchoptionsdialog.ui

SOURCES += \
    $$PWD/main.cpp \
    $$PWD/saagharwindow.cpp \
    $$PWD/searchitemdelegate.cpp \
    $$PWD/saagharwidget.cpp \
    $$PWD/qganjoordbbrowser.cpp \
    $$PWD/settings.cpp \
    $$PWD/searchresultwidget.cpp \
    $$PWD/searchpatternmanager.cpp \
    $$PWD/bookmarks.cpp \
    $$PWD/commands.cpp \
    $$PWD/outline.cpp \
    $$PWD/databaseupdater.cpp \
    $$PWD/nodatabasedialog.cpp \
    $$PWD/qtwin.cpp \
    $$PWD/registerationform.cpp \
    $$PWD/searchoptionsdialog.cpp \
    $$PWD/tabwidget.cpp

include(pQjWidgets/pqjwidgets.pri)
include(downloader/downloader.pri)
include(OSDaB-Zip/osdabzip.pri)

!contains( DEFINES, NO_PHONON_LIB ) {
    include(qmusicplayer/qmusicplayer.pri)
}

#########################################
##for embeding SQlite and its Qt Driver
# DEFINES += EMBEDDED_SQLITE
# HEADERS += sqlite-driver/qsql_sqlite.h \
    # sqlite-driver/qsqlcachedresult_p.h
# SOURCES += sqlite-driver/qsql_sqlite.cpp \
    # sqlite-driver/qsqlcachedresult.cpp

# DEFINES += SQLITE_OMIT_LOAD_EXTENSION SQLITE_OMIT_COMPLETE
# DEFINES += SQLITE_ENABLE_FTS3 SQLITE_ENABLE_FTS3_PARENTHESIS

# HEADERS += sqlite-driver/sqlite/sqlite3.h \
    # sqlite-driver/sqlite/sqlite3ext.h
# SOURCES += sqlite-driver/sqlite/sqlite3.c
#########################################
# HEADERS += $$QMAKE_INCDIR_QT/../src/sql/drivers/sqlite/qsql_sqlite.h
# SOURCES += $$QMAKE_INCDIR_QT/../src/sql/drivers/sqlite/qsql_sqlite.cpp
