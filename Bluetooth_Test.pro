# sudo apt-get install libqt5bluetooth5 qtconnectivity5-dev
# libqt5nfc5_5.12.8-0ubuntu1_arm64.deb
# qtconnectivity5-dev_5.12.8-0ubuntu1_arm64.deb
# libqt5bluetooth5_5.12.8-0ubuntu1_arm64.deb
# libqt5bluetooth5-bin_5.12.8-0ubuntu1_arm64.deb
QT       += core gui bluetooth

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    device.cpp \
    main.cpp \
    mainwindow.cpp \
    service.cpp

HEADERS += \
    device.h \
    mainwindow.h \
    service.h

FORMS += \
    device.ui \
    mainwindow.ui \
    service.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
