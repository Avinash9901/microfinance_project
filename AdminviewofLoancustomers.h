#ifndef ADMINVIEWOFLOANCUSTOMERS_H
#define ADMINVIEWOFLOANCUSTOMERS_H
#include<QDebug>
#include<QObject>
#include<QAbstractTableModel>
#include<databaseclass.h>

class AdminviewofLoancustomers:public QAbstractTableModel
{
public:
    explicit AdminviewofLoancustomers(QObject *parent = nullptr);

    int columnCount(const QModelIndex &parent) const override;
    int rowCount(const QModelIndex &parent) const override;
    QVariant data(const QModelIndex &index,int role)const override;
    virtual QHash<int, QByteArray> roleNames() const override ;


signals:
    void loanuserChanged();
    void loanuseraccountChanged();
public slots:
    int loanCustomervalidation(QString loan_customer,int loan_accountnumber);
    QString loanusername() const;
    void setLoanusername(const QString &loanusername);
    QString readloaninterest();
    // void insertcalculated_interest();

    int loanuser_accountnumber() const;
    void setLoanuser_accountnumber(int loanuser_accountnumber);
private:
    QString m_loanusername;
    int m_loanuser_accountnumber;
    QString storename;
    int storeacnumber;
};

#endif // ADMINVIEWOFLOANCUSTOMERS_H
