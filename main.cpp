#include <QtGui/QApplication>
#include "one.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QTextCodec::setCodecForTr(QTextCodec::codecForName("UTF-8"));
    one w;
    w.showFullScreen();

    return a.exec();
}
