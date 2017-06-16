#ifndef ONE_H
#define ONE_H
#include"two.h"
#include <qsocketnotifier.h>
#include <QWidget>
#include <QtGui>
#include <fcntl.h>
#include <linux/fs.h>
#include <errno.h>
#include <string.h>
#include <termio.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>

namespace Ui {
    class one;
}

class one : public QWidget
{
    Q_OBJECT

public:
    explicit one(QWidget *parent = 0);
    ~one();
    QString str_c;

private:
    Ui::one *ui;
    int openSerialPort();
    QSocketNotifier *m_notifier;
    int m_fd;
    two two1;


private slots:
    void on_pushButton_clicked();
    void readMyCom();
};

#endif // ONE_H
