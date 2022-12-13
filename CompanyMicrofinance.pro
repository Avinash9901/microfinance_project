QT += quick sql

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

DESTDIR = $$PWD/bin
SOURCES += \
        AdminviewofLoancustomers.cpp \
        Adminviewofpigmycustomers.cpp \
        AgentDetailsOfLoan.cpp \
        Agentclass.cpp \
        Agentdetailsofpigmy.cpp \
        Agentslist.cpp \
        Datareceivedfromqml.cpp \
        Languages.cpp \
        Translation.cpp \
        branch.cpp \
        customers.cpp \
        databaseclass.cpp \
        loancustomerdetailsview.cpp \
        loantransaction.cpp \
        main.cpp \
        report.cpp \
        viewtransaction.cpp

RESOURCES += qml.qrc
TRANSLATIONS = Translationssss/Kannada.ts\
TRANSLATIONS = Translationssss/English.ts

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    AdminviewofLoancustomers.h \
    Adminviewofpigmycustomers.h \
    AgentDetailsOfLoan.h \
    Agentclass.h \
    Agentdetailsofpigmy.h \
    Agentslist.h \
    Datareceivedfromqml.h \
    Languages.h \
    Translation.h \
    branch.h \
    customers.h \
    databaseclass.h \
    loancustomerdetailsview.h \
    loantransaction.h \
    report.h \
    viewtransaction.h

DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle.properties \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml
# ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
#android{
#my_files.path= /assets
#my_files.files = $$PWD/android/*
#INSTALLS += my_files
#}

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android


