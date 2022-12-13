#ifndef DATARECEIVEDFROMQML_H
#define DATARECEIVEDFROMQML_H
#include "customers.h"
#include "Agentclass.h"
#include <QObject>
#include "branch.h"
class Datareceivedfromqml : public QObject
{
    Q_OBJECT
public:
    explicit Datareceivedfromqml(QObject *parent = nullptr);
    int claculatedloaninterest;
    float totalcalculatedPiggyamount;
    int interestSendToqml=0;

signals:
    void sendtoqmlChanged();
public slots:
    void customerDetailss(Customers *ptr);
    void loanCustomerDetails(Customers *ptr);
    void depositedtls(Customers *ptr);
    void withdrawDetails(Customers *ptr);
    void interestCalculation(Customers *ptr);
    int getInterestSendToqml() const;
    void setInterestSendToqml(int value);
    void validationdetailsfromagent(QString works,QString name, QString password);
    bool adminNameAndPasswordchngeids(QString adminoldname,QString adminoldpassword,QString adminnewname,QString adminnewpassword);
    void agentaddingdetails(Agentclass *ptr );
    void loanagentaddingdetails(Agentclass *ptrr);
    bool pigmyAgentChangepassword(QString name, QString oldpassword,QString newpassword);
    bool loanAgentChangepassword(QString name, QString oldpassword, QString newpassword);

};

#endif // DATARECEIVEDFROMQML_H
