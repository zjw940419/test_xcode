#include "two.h"
#include "ui_two.h"

two::two(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::two)
{
    ui->setupUi(this);
    ui->pushButton->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->pushButton_10->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->pushButton_11->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->pushButton_12->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->pushButton_2->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->pushButton_3->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->pushButton_4->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->pushButton_5->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->pushButton_6->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->pushButton_7->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->pushButton_8->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->pushButton_9->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->login->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    ui->send->setFocusPolicy(Qt::NoFocus);//设置按钮无焦点
    socket_ = new QTcpSocket(this);
    connect(socket_, SIGNAL(connected()), this, SLOT(connectedSlot()));
    connect(socket_, SIGNAL(disconnected()), this, SLOT(disconnectedSlot()));
    connect(socket_, SIGNAL(readyRead()), this, SLOT(readyReadSlot()));
    connect(socket_, SIGNAL(error(QAbstractSocket::SocketError)), this,
    SLOT(errorSlot(QAbstractSocket::SocketError)));
}

two::~two()
{
     delete ui;
     delete socket_;
}

void two::connectedSlot()
{
    isConnected_ = true;
}

void two::disconnectedSlot()
{
    isConnected_ = false;
    socket_->close();
}

void two::readyReadSlot()
{
    QString message = socket_->readAll();
    if( message.endsWith("!") )
    {
        if(~message.compare("send"))
        {
            ui->textBrowser->append(message);
            on_send_clicked();
            message='\0';
        }
        else
        {
            ui->textBrowser->append(message);
            message='\0';
        }
    }
    else
    {
        ui->textBrowser->append(message);
        message='\0';
    }

}

void two::errorSlot(QAbstractSocket::SocketError)
{
    QMessageBox::information(this, "show", socket_->errorString());
    disconnectedSlot();
}



void two::on_send_clicked()
{
    if (isConnected_) {
            socket_->write(str.toLatin1().data(), str.length());
        } else {
            QMessageBox::information(this, "show", "unconnected");
        }
}

void two::on_pushButton_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1+="1";
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2+="1";
    ui->addr_lineEdit->setText(str_2);
    }
}


void two::on_pushButton_3_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1+="2";
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2+="2";
    ui->addr_lineEdit->setText(str_2);
    }
}

void two::on_pushButton_2_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1+="3";
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2+="3";
    ui->addr_lineEdit->setText(str_2);
    }
}

void two::on_pushButton_4_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1+="4";
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2+="4";
    ui->addr_lineEdit->setText(str_2);
    }
}

void two::on_pushButton_5_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1+="5";
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2+="5";
    ui->addr_lineEdit->setText(str_2);
    }
}

void two::on_pushButton_11_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1+=".";
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2+=".";
    ui->addr_lineEdit->setText(str_2);
    }
}

void two::on_pushButton_6_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1+="6";
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2+="6";
    ui->addr_lineEdit->setText(str_2);
    }
}

void two::on_pushButton_8_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1+="7";
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2+="7";
    ui->addr_lineEdit->setText(str_2);
    }
}

void two::on_pushButton_9_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1+="8";
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2+="8";
    ui->addr_lineEdit->setText(str_2);
    }
}

void two::on_pushButton_7_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1+="9";
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2+="9";
    ui->addr_lineEdit->setText(str_2);
    }
}

void two::on_pushButton_10_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1+="0";
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2+="0";
    ui->addr_lineEdit->setText(str_2);
    }
}

void two::on_pushButton_12_clicked()
{
    if(ui->port_lineEdit->hasFocus())//输入框1焦点
    {
    str_1.chop(1);
    ui->port_lineEdit->setText(str_1);
    }
    else if(ui->addr_lineEdit->hasFocus())//输入框1焦点
    {
    str_2.chop(1);
    ui->addr_lineEdit->setText(str_2);
    }
}

void two::on_login_clicked()
{
      socket_->connectToHost(ui->addr_lineEdit->text(), ui->port_lineEdit->text().toInt());
}
