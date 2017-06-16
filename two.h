#ifndef TWO_H
#define TWO_H
#include<QMessageBox>
#include <QWidget>
#include <QTcpSocket>

namespace Ui {
    class two;
}

class two : public QWidget
{
    Q_OBJECT

public:
    explicit two(QWidget *parent = 0);
    ~two();
    QString str;
    QString str_1;
    QString str_2;
    QChar last;
private:
    Ui::two *ui;
    QTcpSocket *socket_;
    bool isConnected_;

private slots:
    void on_pushButton_12_clicked();
    void on_pushButton_10_clicked();
    void on_pushButton_7_clicked();
    void on_pushButton_9_clicked();
    void on_pushButton_8_clicked();
    void on_pushButton_6_clicked();
    void on_pushButton_11_clicked();
    void on_pushButton_5_clicked();
    void on_pushButton_4_clicked();
    void on_pushButton_2_clicked();
    void on_pushButton_3_clicked();
    void on_pushButton_clicked();
    void on_send_clicked();
    void on_login_clicked();
    void connectedSlot();
    void disconnectedSlot();
    void readyReadSlot();
    void errorSlot(QAbstractSocket::SocketError);
};

#endif // TWO_H
