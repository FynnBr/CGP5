#-------------------------------------------------
#
# Project created by QtCreator 2019-04-10T09:33:54
#
#-------------------------------------------------

QT       += core gui opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = p1Test
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


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    model.cpp \
    mySkybox.cpp \
    myglwidget.cpp \

HEADERS += \
        mainwindow.h \
    model.h \
    mySkybox.h \
    myglwidget.h \
    modelloader.h \

FORMS += \
        mainwindow.ui

RESOURCES += \
    shader.qrc \
    objects.qrc

DISTFILES += \
    objects/gimbal.obj \
    objects/sphere.obj

win32 {
message(Target: win32)
LIBS += -L../assimp-mingw32-4.1.0/bin -lassimp
INCLUDEPATH += ../assimp-mingw32-4.1.0/include
} unix {
message(Target: unix)
CONFIG += link_pkgconfig
PKGCONFIG += assimp
}

