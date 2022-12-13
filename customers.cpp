#include "customers.h"
#include<QDebug>



void Customers::setBalance(float balance)
{
    m_balance = balance;
}


float Customers::getCalculated_interestof_loan() const
{
    return calculated_interestof_loan;
}

void Customers::setCalculated_interestof_loan(float value)
{
    calculated_interestof_loan = value;
}

float Customers::getTotal_piggydeposite_amount() const
{
    return m_total_piggydeposite_amount;
}

void Customers::setTotal_piggydeposite_amount(float total_piggydeposite_amount)
{
    m_total_piggydeposite_amount = total_piggydeposite_amount;
}

Customers::Customers(QObject *parent) : QObject(parent)
{

}

void Customers::customerdetails()
{
    qDebug()<<"name="<<Cname();
    qDebug()<<"mobile="<<mob_no();
    qDebug()<<"adha="<<adhar_no();
    qDebug()<<"pan="<<pan_no();
    qDebug()<<"place="<<place();
  qDebug()<<"branch="<<branch();
    qDebug()<<"agents="<<agents();

   // qDebug()<<"Acc No="<<ac_no();
}
