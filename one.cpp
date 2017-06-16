#include "one.h"
#include "ui_one.h"

one::one(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::one)
{
    ui->setupUi(this);
    str_c='\0';
    m_fd = openSerialPort();
    if (m_fd < 0) {
    QMessageBox::warning(this, tr("Error"), tr("Fail to open serial port!"));
    return ;
    }
    m_notifier = new QSocketNotifier(m_fd, QSocketNotifier::Read, this);
    connect (m_notifier, SIGNAL(activated(int)), this, SLOT(readMyCom()));
}

one::~one()
{
    delete ui;
}

void one::on_pushButton_clicked()
{
    this->close();
    two1.showFullScreen();
}

int one::openSerialPort()
{
int fd = -1;
const char *devName = "/dev/ttySAC3";
fd = ::open(devName, O_RDWR|O_NONBLOCK);
if (fd < 0) {
return -1;
}
termios serialAttr;
memset(&serialAttr, 0, sizeof serialAttr);
serialAttr.c_iflag = IGNPAR;
serialAttr.c_cflag = B9600| HUPCL | CS8 | CREAD | CLOCAL;
serialAttr.c_cc[VMIN] = 1;
if (tcsetattr(fd, TCSANOW, &serialAttr) != 0) {
return -1;
}
return fd;
}


void one::readMyCom() //读取串口数据并显示出来
{
char c;
if (read(m_fd, &c, sizeof c) != 1) {
QMessageBox::warning(this, tr("Error"), tr("Receive error!"));
return;
}
if (c !='C')
{
     str_c +=QString(c);
}
else
{
    ui->textEdit->setPlainText(str_c);
    two1.str=ui->textEdit->toPlainText();
    str_c='\0';
}

}


