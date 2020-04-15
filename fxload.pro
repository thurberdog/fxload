QT       = core
# QT += network
CONFIG   += console
CONFIG   -= app_bundle

target.path = /sbin
INSTALLS += target
LIBS += -lusb-1.0
TEMPLATE = app
SOURCES += \
    ezusb.c \
    main.c

HEADERS += \
    ezusb.h \
    libusb.h



