#-------------------------------------------------
#
# Project created by QtCreator 2019-05-13T20:26:53
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = ui
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../imageviewer-model/release/ -limageviewer-model
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../imageviewer-model/debug/ -limageviewer-model
else:unix:!macx: LIBS += -L$$OUT_PWD/../imageviewer-model/ -limageviewer-model

INCLUDEPATH += $$PWD/../imageviewer-model
DEPENDPATH += $$PWD/../imageviewer-model

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../imageviewer-model/release/libimageviewer-model.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../imageviewer-model/debug/libimageviewer-model.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../imageviewer-model/release/imageviewer-model.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../imageviewer-model/debug/imageviewer-model.lib
else:unix:!macx: PRE_TARGETDEPS += $$OUT_PWD/../imageviewer-model/libimageviewer-model.a
