//#include "branch.h"
//#include "customers.h"
//#include <QDebug>

//Databaseclass *Databaseclass::instance = 0;

//Databaseclass *dbc=dbc->getInstance();

//Branch::Branch(QObject *parent) : QObject(parent)
//{
//    dbc->createDatabase();
//    dbc->createCustomerTable();
//}

//int Branch::getAcc_no() const
//{
//    return acc_no;
//}

//void Branch::setAcc_no(int value)
//{
//    acc_no = value;
//}

//void Branch::addcustomer( Customers *ptr1  )
//{
//    qDebug()<<"################name="<<ptr1->Cname();
//    qDebug()<<"###############mobile="<<ptr1->mob_no();
//    qDebug()<<"###########adha="<<ptr1->adhar_no();
//    qDebug()<<"###########pan="<<ptr1->pan_no();
//    qDebug()<<"#########place="<<ptr1->place();
////    qDebug()<<"branch="<<ptr->branch();
////      qDebug()<<"agents="<<ptr->agents();
////       qDebug()<<"#######agents="<<brnch;
////        qDebug()<<"##########agents="<<agnt;
//    dbc->insertCustomer(ptr1);
//}

//void Branch::addLoancustomer(Customers *ptr)
//{
//    qDebug()<<"loan################name="<<ptr->Cname();
//    qDebug()<<"loan###############mobile="<<ptr->mob_no();
//    qDebug()<<"loan###########adha="<<ptr->adhar_no();
//    qDebug()<<"loan###########pan="<<ptr->pan_no();
//    qDebug()<<"loan#########place="<<ptr->place();
//    dbc->insertLoancustomers(ptr);

//}

//void Branch::depositeamount(Customers *ptr2)
//{
//   qDebug()<<"deposite in branch="<<ptr2->accnumber()<<ptr2->deposite()<<ptr2->datse();
//   dbc->amountinsert(ptr2);
//}

//void Branch::withdrawcustomeramount(Customers *ptr3)
//{
//     qDebug()<<"withdrawamounttt in branch+++++++++="<<ptr3->debit()<<Qt::endl;
//     dbc->customer_withdrawamount(ptr3);
//}

//void Branch::pushloanaccountdtlsintodb(Customers *ptrr)
//{
//    dbc->insertdetailsintoloanaccounts(ptrr);
//    qDebug()<<"ACCOUNT NO OF LOAN"<<ptrr->loaninterest()<<Qt::endl;
//}

////void Branch::pushcalculatedinterestintodb(Customers *ptrr)
////{
////    dbc->insertcalculated_interest(ptrr);

////}

////void Branch::depositeamount(Customers *ptr2)
////{
////    qDebug()<<"#########place="<<ptr2->accnumber()<<ptr2->deposite();
////    dbc->insertdepositeamount(ptr2);

////}
