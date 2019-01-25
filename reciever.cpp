#include "reciever.h"
#include <QDebug>


Receiver::Receiver(QObject *parent) :
    QObject(parent)
{
}

void Receiver::receiveFromQml(int count) {
    qDebug() << "Received in C++ from QML:" << count;

}
