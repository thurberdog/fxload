QT       = core
# QT += network
CONFIG   += console
CONFIG   -= app_bundle

target.path = /sbin
INSTALLS += target
LIBS += -lusb-1.0
TEMPLATE = app
SOURCES += \
    getopt/getopt.c \
    getopt/getopt1.c \
    ezusb.c \
    fxload.c

HEADERS += \
    getopt/getopt.h \
    ezusb.h \
    libusb.h



