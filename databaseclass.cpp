#include "databaseclass.h"
#include "Agentclass.h"
#include<QDebug>
#include<QStandardPaths>
#include<QFile>
#include <QDir>
#include<QSqlError>

//Databaseclass *Databaseclass::instance = 0;

//Report rep;
Databaseclass::Databaseclass(QObject *parent) : QObject(parent)
{
    qDebug()<<Q_FUNC_INFO<<"database constructor>>>>>>>>>>>>>"<<endl;
}

const QString &Databaseclass::getSelectloancustomeraccountnumber() const
{
    return selectloancustomeraccountnumber;
}

void Databaseclass::setSelectloancustomeraccountnumber(const QString &newSelectloancustomeraccountnumber)
{
    selectloancustomeraccountnumber = newSelectloancustomeraccountnumber;
}



const QList<QVariant> &Databaseclass::getLoancustomeraccount_number() const
{
    return loancustomeraccount_number;
}

void Databaseclass::setLoancustomeraccount_number(const QList<QVariant> &newLoancustomeraccount_number)
{
    loancustomeraccount_number = newLoancustomeraccount_number;
}



const QString &Databaseclass::getSelectpigmycudtomername() const
{
    return selectpigmycudtomername;
}

void Databaseclass::setSelectpigmycudtomername(const QString &newSelectpigmycudtomername)
{
    selectpigmycudtomername = newSelectpigmycudtomername;
}

const QList<QVariant> &Databaseclass::getPigmycustomername() const
{
    return pigmycustomername;
}

void Databaseclass::setPigmycustomername(const QList<QVariant> &newPigmycustomername)
{
    pigmycustomername = newPigmycustomername;
}

const QList<Customers *> &Databaseclass::getDetailsofallloancustomers() const
{
    return detailsofallloancustomers;
}

void Databaseclass::setDetailsofallloancustomers(const QList<Customers *> &newDetailsofallloancustomers)
{
    detailsofallloancustomers = newDetailsofallloancustomers;
}

const QList<Customers *> &Databaseclass::getDtlsofallcustomers() const
{
    return dtlsofallcustomers;
}

void Databaseclass::setDtlsofallcustomers(const QList<Customers *> &newDtlsofallcustomers)
{
    dtlsofallcustomers = newDtlsofallcustomers;
}



const QString &Databaseclass::getSelectloanagentname() const
{
    return selectloanagentname;
}

void Databaseclass::setSelectloanagentname(const QString &newSelectloanagentname)
{
    selectloanagentname = newSelectloanagentname;
}

const QString &Databaseclass::getSelectagentname() const
{
    qDebug()<<"Selected Agent in Get==="<<selectagentname<<endl;
    return selectagentname;
}

void Databaseclass::setSelectagentname(const QString &newSelectagentname)
{
    qDebug()<<"Selected Agent==="<<newSelectagentname<<endl;
    selectagentname = newSelectagentname;
}

const QList<Agentclass *> &Databaseclass::getTotalloanAgentdetails() const
{
    return totalloanAgentdetails;
}

void Databaseclass::setTotalloanAgentdetails(const QList<Agentclass *> &newTotalloanAgentdetails)
{
    totalloanAgentdetails = newTotalloanAgentdetails;
}

const QList<Agentclass*> &Databaseclass::getTotalPigmyagentdetails() const
{
    return totalPigmyagentdetails;
}

void Databaseclass::setTotalPigmyagentdetails(const QList<Agentclass*> &newTotalPigmyagentdetails)
{
    totalPigmyagentdetails = newTotalPigmyagentdetails;
}

const QList<QString> &Databaseclass::getLoanagentbranch() const
{
    return loanagentbranch;
}

void Databaseclass::setLoanagentbranch(const QList<QString> &newLoanagentbranch)
{
    loanagentbranch = newLoanagentbranch;
}

const QList<QString> &Databaseclass::getLoanagentname() const
{
    return loanagentname;
}

void Databaseclass::setLoanagentname(const QList<QString> &newLoanagentname)
{
    loanagentname = newLoanagentname;
}

const QList<QString> &Databaseclass::getAgentbranch() const
{
    return agentbranch;
}

void Databaseclass::setAgentbranch(const QList<QString> &newAgentbranch)
{
    agentbranch = newAgentbranch;
}

const QList<QString> &Databaseclass::getAgents() const
{
    return agents;
}

void Databaseclass::setAgents(const QList<QString> &newAgents)
{
    agents = newAgents;
}

QList<Customers *> Databaseclass::getLoantransactionlist() const
{
    return loantransactionlist;
}

void Databaseclass::setLoantransactionlist(const QList<Customers *> &value)
{
    loantransactionlist = value;
}

int Databaseclass::getInterestrecover() const
{
    return interestrecover;
}

void Databaseclass::setInterestrecover(int value)
{
    interestrecover = value;
}

QString Databaseclass::getAccountNoOfloancustomer() const
{
    return accountNoOfloancustomer;
}

void Databaseclass::setAccountNoOfloancustomer(const int &valuee)
{
    qDebug()<<"In  SCNO.OFLOAN Set Func()---**"<<valuee<<Qt::endl;
    accountNoOfloancustomer = QString::number(valuee);
}

QList<Customers *> Databaseclass::getLoandtls() const
{
    return loandtls;
}

void Databaseclass::setLoandtls(const QList<Customers *> &value)
{
    loandtls = value;
}

int Databaseclass::getAccount_numberofloancustomer() const
{
    return account_numberofloancustomer;
}

void Databaseclass::setAccount_numberofloancustomer(const int &value)
{
    account_numberofloancustomer = value;
}

QList<Customers *> Databaseclass::getTransactionlist() const
{
    return transactionlist;
}

void Databaseclass::setTransactionlist(const QList<Customers *> &value)
{
    transactionlist = value;
}

QString Databaseclass::getAcnostr() const
{
    return acnostr;
}

void Databaseclass::setAcnostr(const int &value)
{
    qDebug()<<"In Set Func()---**"<<value<<Qt::endl;
    acnostr = QString::number(value);
}

int Databaseclass::getAccount_number() const
{
    return account_number;
}

void Databaseclass::setAccount_number(int value)
{
    account_number = value;
}

QList<Customers *> Databaseclass::getDtls() const
{
    return dtls;
}

void Databaseclass::createDatabase()
{
    //    auto path = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
    //    auto fileName= path + "/Finance.db";

    //    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
    //    QFile file("./DatabaseFile/Finance.db") ;
    //    QString temp = file.fileName();
    //    qDebug()<<"Path=-=-="<<temp<<Qt::endl;
    //    QString DbPath;


    //        DbPath = QStandardPaths::writableLocation(QStandardPaths::AppLocalDataLocation);
    //        if (DbPath.isEmpty())
    //        {
    //            qDebug() << "Could not obtain writable location.";
    //            return;
    //        }
    //        qDebug() << "DB Path Before: " << DbPath;
    //        DbPath.append("./DatabaseFile/Finance.db");
    //        qDebug() << "DB Path After: " << DbPath;
    //        QFile::setPermissions(DbPath ,QFile::WriteOwner | QFile::ReadOwner) ;
    //        qDebug() << "Copied ? : " << file.copy(DbPath) ;
    //        if(QFile(DbPath).exists()){
    //            qDebug() << "File exists :" << DbPath;
    //        }else{
    //            qDebug() << "File doesn't exists :" << DbPath;
    //        }

    //    db.setDatabaseName(DbPath);
    //    qDebug() << "Is DB open ? :" << db.open();

    //    QFile DbFile;
    //    QString DatabaseDataStoragePath = QStandardPaths::writableLocation(QStandardPaths::StandardLocation::AppDataLocation);
    //    DbFile.setFileName("assets:/Finance.db");
    //    DbFile.copy(DatabaseDataStoragePath + "/Finance.db");
    //    QFile::setPermissions(DatabaseDataStoragePath + "/Finance.db", QFile::WriteOwner | QFile::ReadOwner);

    //    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
    //    db.setDatabaseName("Finance.db");
    //    if (db.open()) {
    //        qDebug()<<"db open"<<Q_FUNC_INFO<<endl;
    //    }else
    //    {
    //        qDebug()<<"db not  open****"<<endl;
    //    }

    // PACKAGECONFIG_append_pn-qtbase = " sql-sqlite"
    //    QString path = "Finance.db";
    //db.setDatabaseName("./DatabaseFile/Finance.db");
    QFile file;
    db = QSqlDatabase::addDatabase("QSQLITE");
    QString currentpath=QDir::currentPath()+"/finall.db";
    if(file.exists()){
        qDebug()<<"db file alraedy existss"<<endl;
    }else{
        file.setFileName(currentpath);
        file.open(QIODevice::ReadWrite);

        //    if(QFile::exists(currentpath)){
        db.setDatabaseName(currentpath);
        db.open();
        if(!db.isOpen()){
            qDebug()<<Q_FUNC_INFO<<"db connection failed"<<endl;
        }
        else {
            qDebug()<<Q_FUNC_INFO<<"db connection sucessfull..."<<endl;
        }
    }

}

void Databaseclass::createCustomerTable()
{
    QString query="CREATE TABLE IF NOT EXISTS CUSTOMERSS(customer_name VARCHAR(20),mobile_no VARCHAR(20),adhar_no VARCHAR(20),pan_no VARCHAR(20),place VARCHAR(20),branch VARCHAR(20),agent VARCHAR(20),AC_number VARCHAR(20))";
    QSqlQuery qry(db);
    if(!qry.exec(query))
    {
        qDebug()<<"error in table";
    }
    else {
        qDebug()<<"table created"<<Q_FUNC_INFO<<Qt::endl;
    }
    //db.close();
    qDebug()<<"end";
}
void Databaseclass::createLoanCustomerTable()
{
    QString query="CREATE TABLE IF NOT EXISTS LOAN_CUSTOMERS(customer_name VARCHAR(20),mobile_no VARCHAR(20),adhar_no VARCHAR(20),pan_no VARCHAR(20),place VARCHAR(20),branch VARCHAR(20),agent VARCHAR(20),AC_number VARCHAR(20))";
    QSqlQuery qry(db);
    if(!qry.exec(query))
    {
        qDebug()<<"error in table";
    }
    else {
        qDebug()<<"loan customer table created"<<Q_FUNC_INFO<<Qt::endl;
    }
    //db.close();
    qDebug()<<"end";
}

void Databaseclass::insertCustomer(Customers *ptr3)
{
    QSqlQuery count,qry(db),qry1;
    //int myCount=1;
    count.prepare("SELECT AC_number FROM CUSTOMERSS");
    count.exec();
    while (count.next()) {
        account_number= count.value(0).toInt();
    }
    QSqlQuery query(db);
    bool sucess;


    query.prepare("INSERT INTO CUSTOMERSS(customer_name,mobile_no,adhar_no,pan_no,place,branch,agent,AC_number) "
                  "VALUES (:ucustomer_name, :umobile_no,:uadhar_no,:upan_no,:uplace,:ubranch,:uagent,:uac_number)");
    query.bindValue(":ucustomer_name", ptr3->Cname());
    query.bindValue(":umobile_no", ptr3->mob_no());
    query.bindValue(":uadhar_no", ptr3->adhar_no());
    query.bindValue(":upan_no", ptr3->pan_no());
    query.bindValue(":uplace", ptr3->place());
    query.bindValue(":ubranch", ptr3->branch());
    query.bindValue(":uagent", ptr3->agents());
    query.bindValue(":uac_number",account_number+1);

    //    qDebug()<<"qBind---"<<abc<<Qt::endl;
    Customers *ptr=new Customers;
    ptr->setCname(ptr3->Cname());
    ptr->setmob_no(ptr3->mob_no());
    ptr->setadhar_no(ptr3->adhar_no());
    ptr->setpan_no(ptr3->pan_no());
    ptr->setplace(ptr3->place());
    ptr->setbranch(ptr3->branch());
    ptr->setagents(ptr3->agents());
    ptr->setaccnumber(account_number+1);
    //    ptr->setac
    // dtls.push_back(ptr);
    dtlsofallcustomers.push_back(ptr);
    pigmycustomername.push_back(ptr->accnumber());
    //    qDebug()<<"qSet---"<<abc<<Qt::endl;
    qDebug()<<"customer details sucessfully inserted";
    sucess=query.exec();
    if(sucess){
        qDebug()<<"customer details sucessfully inserted";
    }
    else{
        qDebug()<<"failed";
    }
    acnostr = QString::number(account_number+1);//.toString();
    QString createee = "CREATE TABLE a"+acnostr+" (transaction_amount VARCHAR(20),piggy_interest VARCHAR(20), date DATE,total_piggyamount VARCHAR(20), balance VARCHAR(20))";
    //    qry.bindValue(":uAC_number",acnostr);
    qDebug()<<" create accno------------"<<Q_FUNC_INFO<<createee<<Qt::endl;
    bool ss1=  qry.exec(createee);
    if (ss1){
        qDebug()<<" crt doneeeeeeeeeeeeeeeeeee"<<Qt::endl;
    }else{
        qDebug()<<"crt  nott doneeeeeeeeeeeeeeeeeee"<<Qt::endl;
    }

}

void Databaseclass::insertLoancustomers(Customers *ptr)
{
    qDebug()<<"inside db loan################name="<<ptr->Cname();
    qDebug()<<"inside db  loan###############mobile="<<ptr->mob_no();
    qDebug()<<"inside db  loan###########adha="<<ptr->adhar_no();
    qDebug()<<"inside db  loan###########pan="<<ptr->pan_no();
    qDebug()<<"inside db  loan#########place="<<ptr->place();


    QSqlQuery count,qry,qry1;
    //int myCount=1;
    count.prepare("SELECT AC_number FROM LOAN_CUSTOMERS");
    count.exec();
    while (count.next()) {
        account_numberofloancustomer = count.value(0).toInt();
    }
    bool sucess;


    QSqlQuery query;
    query.prepare("INSERT INTO LOAN_CUSTOMERS(customer_name,mobile_no,adhar_no,pan_no,place,branch,agent,AC_number) "
                  "VALUES (:ucustomer_name, :umobile_no,:uadhar_no,:upan_no,:uplace,:ubranch,:uagent,:uac_number)");
    query.bindValue(":ucustomer_name", ptr->Cname());
    query.bindValue(":umobile_no", ptr->mob_no());
    query.bindValue(":uadhar_no", ptr->adhar_no());
    query.bindValue(":upan_no", ptr->pan_no());
    query.bindValue(":uplace", ptr->place());
    query.bindValue(":ubranch", ptr->branch());
    query.bindValue(":uagent", ptr->agents());
    query.bindValue(":uac_number",account_numberofloancustomer+1);
    // qDebug()<<"qBind---"<<&abc<<Qt::endl;
    Customers *ptr9=new Customers;
    ptr9->setCname(ptr->Cname());
    ptr9->setmob_no(ptr->mob_no());
    ptr9->setadhar_no(ptr->adhar_no());
    ptr9->setpan_no(ptr->pan_no());
    ptr9->setplace(ptr->place());
    ptr9->setbranch(ptr->branch());
    ptr9->setagents(ptr->agents());
    ptr9->setaccnumber(account_numberofloancustomer +1);
    //    ptr->setac
    // loandtls.push_back(ptr);
    detailsofallloancustomers.push_back(ptr);
    loancustomeraccount_number.push_back(ptr9->accnumber());
    //    qDebug()<<"qSet---"<<abc<<Qt::endl;
    qDebug()<<"customer details sucessfully inserted"<<Q_FUNC_INFO;
    sucess=query.exec();
    if(sucess){
        qDebug()<<"customer details sucessfully inserted into loan table";
        qDebug()<<"done of insertion into loan place="<<ptr->place();
    }
    else{
        qDebug()<<"failed to insert loan customers";
    }
    accountNoOfloancustomer = QString::number(account_numberofloancustomer +1);//.toString();
    QString createee = "CREATE TABLE loancustomer"+accountNoOfloancustomer+" (sanctioned_amount VARCHAR(20),date DATE, rate_of_interest VARCHAR(20),calculated_interest VARCHAR(20),recovered_principalAmount VARCHAR(20))";
    //    qry.bindValue(":uAC_number",acnostr);
    qDebug()<<" create accno------------"<<createee<<Qt::endl;
    bool ss1=  qry.exec(createee);
    if (ss1){
        qDebug()<<" crt doneee of loan side "<<Qt::endl;
    }else{
        qDebug()<<"crt  nott done of loan side"<<Qt::endl;
    }


}

/*QStringList*/void Databaseclass::showdetails()
{
    db.open();
    QSqlQuery query(db);
    if(!db.isOpen()){
        qDebug()<<Q_FUNC_INFO<<"db open failed in show"<<endl;
        //        db.open();
    }
    else {
        qDebug()<<Q_FUNC_INFO<<"db open sucessfull...in show"<<endl;

    }

    bool sucess;
    QString jat  = "SELECT * FROM CUSTOMERSS where agent=\""+getSelectagentname()+"\"";
    qDebug()<<"Jat=-=-=="<<jat<<endl;
    query.prepare(jat);
    sucess=query.exec();
    if(sucess){
        qDebug()<<"shows sucessfully"<<Qt::endl;
    }else
    {
        qDebug()<<"error in showing the data view"<<Qt::endl;
    }
    //    query.exec();
    list.clear();
    dtls.clear();
    pigmycustomername.clear();
    qDebug()<<Q_FUNC_INFO<<Qt::endl;
    while (query.next()) {
        qDebug()<<"here"<<Qt::endl;
        Customers *ptr=new Customers;
        ptr->setCname((query.value(0).toString()));
        ptr->setmob_no( (query.value(1).toString()));
        ptr->setadhar_no( (query.value(2).toString()));
        ptr->setpan_no( (query.value(3).toString()));
        ptr->setplace( (query.value(4).toString()));
        ptr->setbranch( (query.value(5).toString()));
        ptr->setagents( (query.value(6).toString()));
        ptr->setaccnumber(query.value(7).toInt());
        //dtls.push_back(ptr);
        pigmycustomername.push_back(ptr->accnumber());

    }
    for(auto it=dtls.begin();it!=dtls.end();it++){
        qDebug()<<"name : "<<(*it)->Cname()<<(*it)->accnumber()<<Qt::endl;

    }
    //    return list;
}

void Databaseclass::adminviewallcustomerdetailsofpigmyagents()
{
    db.open();
    QSqlQuery query(db);
    if(!db.isOpen()){
        qDebug()<<Q_FUNC_INFO<<"db open failed in show"<<endl;
        //        db.open();
    }
    else {
        qDebug()<<Q_FUNC_INFO<<"db open sucessfull...in show"<<endl;

    }
    bool sucess;
    QString jat  = "SELECT * FROM CUSTOMERSS";
    qDebug()<<"Jat=-=-=="<<jat<<endl;
    query.prepare(jat);
    sucess=query.exec();
    if(sucess){
        qDebug()<<"shows sucessfully"<<Qt::endl;
    }else
    {
        qDebug()<<"error in showing the data view"<<Qt::endl;
    }
    //    query.exec();
    list.clear();
    dtlsofallcustomers.clear();
    qDebug()<<Q_FUNC_INFO<<Qt::endl;
    while (query.next()) {
        qDebug()<<"here"<<Qt::endl;
        Customers *ptr=new Customers;
        ptr->setCname((query.value(0).toString()));
        ptr->setmob_no( (query.value(1).toString()));
        ptr->setadhar_no( (query.value(2).toString()));
        ptr->setpan_no( (query.value(3).toString()));
        ptr->setplace( (query.value(4).toString()));
        ptr->setbranch( (query.value(5).toString()));
        ptr->setagents( (query.value(6).toString()));
        ptr->setaccnumber(query.value(7).toInt());
        dtlsofallcustomers.push_back(ptr);

    }
    for(auto it=dtls.begin();it!=dtls.end();it++){
        qDebug()<<"name : "<<(*it)->Cname()<<(*it)->accnumber()<<Qt::endl;

    }
}

void Databaseclass::adminviewofallLoanCustomers()
{
    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess){
        qDebug()<<"shows sucessfully"<<Qt::endl;
    }else
    {
        qDebug()<<"error in showing the data"<<Q_FUNC_INFO<<Qt::endl;
    }
    query.prepare("SELECT * FROM LOAN_CUSTOMERS");
    query.exec();
    detailsofallloancustomers.clear();
    qDebug()<<Q_FUNC_INFO<<Qt::endl;
    while (query.next()) {
        qDebug()<<"here"<<Qt::endl;
        Customers *ptr9=new Customers;
        ptr9->setCname((query.value(0).toString()));
        ptr9->setmob_no( (query.value(1).toString()));
        ptr9->setadhar_no( (query.value(2).toString()));
        ptr9->setpan_no( (query.value(3).toString()));
        ptr9->setplace( (query.value(4).toString()));
        ptr9->setbranch( (query.value(5).toString()));
        ptr9->setagents( (query.value(6).toString()));
        ptr9->setaccnumber(query.value(7).toInt());
        detailsofallloancustomers.push_back(ptr9);
        qDebug()<<"IN LOAN DETAILS&&&&"<<query.value(0).toString()<<Qt::endl;

    }
    for(auto it=loandtls.begin();it!=loandtls.end();it++){
        qDebug()<<"loan customer sname : "<<(*it)->Cname()<<(*it)->accnumber()<<Qt::endl;

    }
}



void Databaseclass::showloancustomerdetails()
{
    QSqlQuery query(db);
    bool sucess;
    sucess=query.exec();
    if(sucess){
        qDebug()<<"shows sucessfully"<<Qt::endl;
    }else
    {
        qDebug()<<"error in showing the data"<<Q_FUNC_INFO<<Qt::endl;
    }
    QString loancust="SELECT * FROM LOAN_CUSTOMERS where agent=\""+getSelectloanagentname()+"\"";
    qDebug()<<"Jat=-=-=="<<loancust<<endl;
    query.prepare(loancust);
    query.exec();
    loandtls.clear();
    loancustomeraccount_number.clear();
    qDebug()<<Q_FUNC_INFO<<Qt::endl;
    while (query.next()) {
        qDebug()<<"here"<<Qt::endl;
        Customers *ptr9=new Customers;
        ptr9->setCname((query.value(0).toString()));
        ptr9->setmob_no( (query.value(1).toString()));
        ptr9->setadhar_no( (query.value(2).toString()));
        ptr9->setpan_no( (query.value(3).toString()));
        ptr9->setplace( (query.value(4).toString()));
        ptr9->setbranch( (query.value(5).toString()));
        ptr9->setagents( (query.value(6).toString()));
        ptr9->setaccnumber(query.value(7).toInt());
        // loandtls.push_back(ptr9);
        loancustomeraccount_number.push_back(ptr9->accnumber());
        qDebug()<<"IN LOAN DETAILS&&&&"<<query.value(0).toString()<<Qt::endl;

    }
    for(auto it=loandtls.begin();it!=loandtls.end();it++){
        qDebug()<<"loan customer sname : "<<(*it)->Cname()<<(*it)->accnumber()<<Qt::endl;

    }
}


void Databaseclass::amountinsert(Customers *ptr4)
{

    QSqlQuery tr;
    QString acnotra = "SELECT total_piggyamount from a"+getAcnostr();//QString::number(account_number+1);
    qDebug()<<"acnotra------------*"<<acnotra<<Qt::endl;
    tr.exec(acnotra);
    //  int tracount=0;
    currbal=0;
    while (tr.next()) {
        currbal=currbal+tr.value(0).toFloat();//+(ptr4->piggy_interest()+ptr4->piggy_interest()/100);
        qDebug()<<"currballl------------*"<<currbal<<Qt::endl;
        //        account_number= count.value(0).toInt();
        //        acc_iter++;
        //        // qDebug()<<"newwwwwwwwwwwwwwwwwwwwwwwwwww"<<  count.value(0).toInt()<<Qt::endl;
        //        qDebug()<<"counttttttttttttttttttttttttttt---"<<acc_iter<<Qt::endl;
    }

    // float old_balance=ptr4->d

    QSqlQuery qry1,qry2;
    if(ptr4->deposite()+currbal<0){
        qDebug()<<"Insufficient Balance"<<Qt::endl;
        return;
    }
    else{
        currbal=currbal+ptr4->getTotal_piggydeposite_amount();
        QString insertt = "insert into a"+getAcnostr()+" (transaction_amount, piggy_interest,date,total_piggyamount,balance) " "VALUES("+QString::number(ptr4->deposite())+","+QString::number(ptr4->piggy_interest())+",'"+ptr4->datse()+"',"+QString::number(ptr4->getTotal_piggydeposite_amount())+","+QString::number(currbal)+")";
        qDebug()<<"qt datessssssss"<<ptr4->datse()<<Qt::endl;
        qDebug()<<" insertt accno------------"<<insertt<<Qt::endl;
        bool ss=qry1.exec(insertt);
        if (ss){
            qDebug()<<"doneeeeeeeeeeeeeeeeeee"<<Qt::endl;

        }else{
            qDebug()<<" nott doneeeeeeeeeeeeeeeeeee"<<Qt::endl;
        }
    }
}

void Databaseclass::insertdetailsintoloanaccounts(Customers *ptr5)
{

    qDebug()<<" in db ACCOUNT NO ***********"<<getAccountNoOfloancustomer()<<Qt::endl;
    QSqlQuery qry1,qry2;
    QString insertt = "insert into loancustomer"+getAccountNoOfloancustomer()+"(sanctioned_amount,date,rate_of_interest,  calculated_interest,recovered_principalAmount) " "VALUES("+QString::number(ptr5->loanamount())+",'"+ptr5->datse()+"',"+QString::number(ptr5->loaninterest())+","+QString::number(ptr5->getCalculated_interestof_loan())+","+QString::number(ptr5->principalreceive())+")";
    qDebug()<<" insertt accno into ------------"<<insertt<<Qt::endl;
    bool ss=qry1.exec(insertt);
    if (ss){
        qDebug()<<"insertion of loancustomer details sucess"<<Qt::endl;

    }else{
        qDebug()<<" nott nsertion of loancustomer details sucess"<<Qt::endl;
    }


}

void Databaseclass::customer_withdrawamount(Customers *ptr5)
{
    float new_balance = 0.0;
    QSqlQuery query,query2,query1;
    float old_balance=0;

    bool sucess;
    bool sucess1;
    query.prepare("select * from CUSTOMERSS");
    sucess1=query.exec();
    if(sucess1){
        while(query.next()){
            if(query.value(7).toInt()==ptr5->accnumber())
            {
                query2.prepare("SELECT balance FROM a"+getAcnostr());
                // query2.bindValue(":acnumber",ptr5->accnumber());
                query2.exec();
                query2.next();
                old_balance=query2.value(0).toFloat();//<<Qt::endl;
                qDebug()<<"Old_balll---------"<<old_balance<<Qt::endl;
                //new_balance=(ptr5->deposite()+old_balance);
                query1.prepare("UPDATE CUSTOMERSS SET total_piggyamount=:deposite WHERE AC_number=:acnumber");
                qDebug()<<"newwww_balll---------"<<new_balance<<ptr5->debit()<<Qt::endl;
                if(ptr5->debit()+old_balance<0){
                    qDebug()<<"insufficent balance"<<Qt::endl;
                }else{
                    query1.bindValue(":deposite",old_balance - ptr5->debit());
                    query1.bindValue(":acnumber",ptr5->accnumber());


                    sucess=query1.exec();
                }
                qDebug()<<"dateee************* \n"<<ptr5->datse();
                qDebug()<<"deposite completed \n";
                return;
            }
            else {
                qDebug()<<"DEPOSITE IS NOT DONE : "<<Qt::endl;
            }
        }

    }

}

void Databaseclass::viewTransaction()
{
    QSqlQuery tr;
    long long int tot_transact=0;
    QString abc=  "SELECT * from  a"+getAcnostr();
    tr.prepare( /*"SELECT * from  a"+getAcnostr()*/abc);//QString::number(account_number+1);
    tr.exec();
    transactionlist.clear();
    qDebug()<<"acnotra-qry------ccc------*"<<getAcnostr()<<Qt::endl;
    qDebug()<<"acnotra------vvv------*"<<abc<<Qt::endl;
    while (tr.next()) {
        Customers *ptr=new Customers;
        ptr->settransaction((tr.value(0).toFloat()));
        ptr->setdatse(( tr.value(2).toString()));
        ptr->setpiggy_interest(tr.value(1).toInt());
        ptr->setTotal_piggydeposite_amount(tr.value(3).toFloat());
        ptr->setBalance(( tr.value(4).toFloat()));

        transactionlist.push_back(ptr);
        qDebug()<<"inside the while##########"<<(tr.value(0).toFloat())<<( tr.value(1).toString())<<( tr.value(2).toFloat())<<Qt::endl;
        tot_transact++;
    }
    for(int it=0;it<tot_transact;it++){
        qDebug()<<"*********transaction********** : "<<transactionlist[it]->transaction() <<transactionlist[it]->datse()<<Qt::endl;
    }
}


void Databaseclass::viewLoanTransaction()
{
    QSqlQuery view;
    long long int total_loancust=0;
    QString queryyy="SELECT * FROM loancustomer"+getAccountNoOfloancustomer();
    view.prepare(queryyy);
    view.exec();
    loantransactionlist.clear();
    while (view.next()) {
        Customers *ptr=new Customers;
        ptr->setloanamount(view.value(0).toInt());
        ptr->setdatse(view.value(1).toString());
        ptr->setloaninterest(view.value(2).toInt());
        ptr->setloaninterestreceive(view.value(3).toInt());
        ptr->setprincipalreceive(view.value(4).toInt());
        loantransactionlist.push_back(ptr);
        qDebug()<<"inside the loannnnnn   while##########"<<(view.value(0).toInt())<<( view.value(1).toString())<<( view.value(2).toInt())<<Qt::endl;
        total_loancust++;
    }
}

bool Databaseclass::piggyworkervalidation(QString works, QString piggyname, QString piggypassword)
{
    if(!db.isOpen()){
        qDebug()<<Q_FUNC_INFO<<"db open failed in piggyvalidation"<<endl;
        //        db.open();
    }
    else {
        qDebug()<<Q_FUNC_INFO<<"db open sucessfull...in piggyvalidation"<<endl;

    }
    QSqlQuery qry(db);
    qDebug()<<"password===========qml"<<piggypassword;
    bool sucess;
    qry.prepare("SELECT * FROM pigmyagents");
    sucess=qry.exec();
    qDebug()<<"prepare=*************"<< sucess;//qry.prepare("select * FROM Login_authentication");
    qDebug()<<"dberror...."<<db.lastError()<<endl;
    qDebug()<<"sqlerror...."<<qry.lastError()<<endl;
    if(sucess){
        while (qry.next()) {
            if(qry.value(0).toString()==works && qry.value(1).toString()==piggyname && qry.value(4).toString()==piggypassword){
                qDebug()<<"piggy*** Login sucessfull"<<qry.value(0).toString()<<qry.value(1).toString()<<qry.value(4).toString()<<Qt::endl;
                setSelectagentname(piggyname);
                showdetails();
                return  1;
            }else {
                qDebug()<<"back end data...."<<qry.value(0).toString()<<endl;
                qDebug()<<" piggy Login failed"<<Qt::endl;
            }
        }
        return 0 ;
    }else{
        qDebug()<<" qryyyyyyyyyyyyyyyyyyyy failed"<<Qt::endl;
    }
    return  0;
}

bool Databaseclass::loanworkervalidation(QString works2, QString loanname, QString loanpassword)
{
    QSqlQuery qry(db);
    bool sucess;
    qry.prepare("SELECT * FROM loanagents");
    sucess=qry.exec();
    if(sucess){
        while (qry.next()) {
            if(qry.value(0).toString()==works2 && qry.value(1).toString()==loanname && qry.value(4).toString()==loanpassword){
                qDebug()<<" loan Login sucessfull"<<Qt::endl;
                setSelectloanagentname(loanname);
                showloancustomerdetails();
                return 1;
            }
        }
        qDebug()<<" loan Login failed"<<qry.value(1).toString()<<qry.value(4).toString()<<Qt::endl;
        qDebug()<<"back end data in side the loan validation...."<<qry.value(0).toString()<<endl;
        return  0;
    }else {
        qDebug()<<" loan qryyyy failed"<<Qt::endl;
    }
    return 0;
}

bool Databaseclass::Adminloginvalidation(QString adminname, QString admin_password)
{
    QSqlQuery readadmintable(db);
    readadmintable.prepare("SELECT * FROM Adminlogintable");
    bool sucess;
    sucess=readadmintable.exec();
    if(sucess){
        while (readadmintable.next()) {
            if(readadmintable.value(0).toString()==adminname && readadmintable.value(1).toString()==admin_password){
                qDebug()<<"admin login sucessfully"<<endl;
                return 1;
            }
        }
        qDebug()<<"admin login failed"<<endl;
        return 0;
    }

    else
    {
        qDebug()<<"query failed in admin login "<<endl;
    }
    return 0;

}
void Databaseclass::agentaddingdetails()
{
    QSqlQuery agentqry(db);
    if(!db.isOpen()){
        qDebug()<<Q_FUNC_INFO<<"db open failed in agents"<<db.isOpenError()<<endl;
        //        db.open();
    }
    else {
        qDebug()<<Q_FUNC_INFO<<"db open sucessfull...in agents"<<endl;
    }
    QString agentdetails="CREATE TABLE IF NOT EXISTS pigmyagents(agentwork VARCHAR(20),agent_name VARCHAR(20),agent_mob VARCHAR(20),branch VARCHAR(20),agentpassword VARCHAR(20))";
    agentqry.prepare(agentdetails);
    bool sucess;
    sucess=agentqry.exec();
    if(sucess){
        qDebug()<<"agent table created sucessfully"<<endl;
    }else{
        qDebug()<<"agent query failed"<<endl;
    }
}

void Databaseclass::loanagenttable()
{
    if(!db.isOpen()){
        qDebug()<<Q_FUNC_INFO<<"db open failed in agents"<<db.isOpenError()<<endl;
        //        db.open();
    }
    else {
        qDebug()<<Q_FUNC_INFO<<"db open sucessfull...in agents"<<endl;
    }
    QSqlQuery agentqry(db);
    QString agentdetails="CREATE TABLE IF NOT EXISTS loanagents(agentwork VARCHAR(20),agent_name VARCHAR(20),agent_mob VARCHAR(20),branch VARCHAR(20),agentpassword VARCHAR(20))";
    agentqry.prepare(agentdetails);
    bool sucess;
    sucess=agentqry.exec();
    if(sucess){
        qDebug()<<"loan agent table created sucessfully"<<endl;
    }else{
        qDebug()<<"loan agent query failed"<<endl;
    }
}

void Databaseclass::insertagentdetails(Agentclass *ptr)
{
    QSqlQuery insertqry(db);
    insertqry.prepare( "INSERT INTO pigmyagents(agentwork,agent_name,agent_mob,branch,agentpassword)""VALUES(:uagwork,:uagent,:umob,:ubranch,:uagpassword)");
    insertqry.bindValue(":uagwork",ptr->getAgentwork());
    insertqry.bindValue(":uagent",ptr->getAgentname());
    insertqry.bindValue(":umob",ptr->getAgent_mobno());
    insertqry.bindValue(":ubranch",ptr->getAgent_branch());
    insertqry.bindValue(":uagpassword",ptr->getAgent_password());
    bool suc;
    suc=insertqry.exec();
    Agentclass *ptrr=new Agentclass;
    ptrr->setAgentwork(ptr->getAgentwork());
    ptrr->setAgentname(ptr->getAgentname());
    ptrr->setAgent_mobno(ptr->getAgent_mobno());
    ptrr->setAgent_branch(ptr->getAgent_branch());
    ptrr->setAgent_password(ptr->getAgent_password());
    totalPigmyagentdetails.push_back(ptrr);
    agents.push_back(ptr->getAgentname());
    agentbranch.push_back(ptr->getAgent_branch());

    if(suc){
        qDebug()<<"insertion of agents sucessfully"<<endl;
    }else{
        qDebug()<<"insertion of agents failed"<<endl;
    }
}

void Databaseclass::insertloanagents(Agentclass *ptr )
{
    QSqlQuery insertqry(db);
    insertqry.prepare( "INSERT INTO loanagents(agentwork,agent_name,agent_mob,branch,agentpassword)""VALUES(:uagwork,:uagent,:umob,:ubranch,:uagpassword)");
    insertqry.bindValue(":uagwork",ptr->getAgentwork());
    insertqry.bindValue(":uagent",ptr->getAgentname());
    insertqry.bindValue(":umob",ptr->getAgent_mobno());
    insertqry.bindValue(":ubranch",ptr->getAgent_branch());
    insertqry.bindValue(":uagpassword",ptr->getAgent_password());
    bool suc;
    suc=insertqry.exec();
    Agentclass *ptrrr=new Agentclass;
    ptrrr->setAgentwork(ptr->getAgentwork());
    ptrrr->setAgentname(ptr->getAgentname());
    ptrrr->setAgent_mobno(ptr->getAgent_mobno());
    ptrrr->setAgent_branch(ptr->getAgent_branch());
    // ptrrr->setAgent_password(ptr->getAgent_password());
    totalloanAgentdetails.push_back(ptrrr);
    loanagentname.push_back(ptr->getAgentname());
    loanagentbranch.push_back(ptr->getAgent_branch());

    if(suc){
        qDebug()<<"insertion of loan agents sucessfully"<<endl;
    }else{
        qDebug()<<"insertion of loan   agents failed"<<endl;
    }
}

void Databaseclass::showagents()
{
    QSqlQuery showagqry(db);
    showagqry.prepare("SELECT * FROM pigmyagents");
    //bool sucess=showagqry.exec();
    showagqry.exec();
    agents.clear();
    agentbranch.clear();
    while (showagqry.next()) {
        Agentclass *ptrr=new Agentclass;
        ptrr->setAgentwork(showagqry.value(0).toString());
        ptrr->setAgentname(showagqry.value(1).toString());
        ptrr->setAgent_mobno(showagqry.value(2).toString());
        ptrr->setAgent_branch(showagqry.value(3).toString());
        ptrr->setAgent_password(showagqry.value(4).toString());
        totalPigmyagentdetails.push_back(ptrr);
        agents.push_back(showagqry.value(1).toString());
        agentbranch.push_back(showagqry.value(3).toString());


        //totalPigmyagentdetails.push_back(showagqry.value(0).toString(),showagqry.value(1).toString());
        qDebug()<<"show agents sucessfully"<<showagqry.value(1).toString()<<showagqry.value(3).toString()<<endl;
    }

}

void Databaseclass::showloanagents()
{
    QSqlQuery showagqry(db);
    showagqry.prepare("SELECT * FROM loanagents");
    //bool sucess=showagqry.exec();
    showagqry.exec();
    loanagentname.clear();
    loanagentbranch.clear();
    while (showagqry.next()) {
        Agentclass *ptrrr=new Agentclass;
        ptrrr->setAgentwork(showagqry.value(0).toString());
        ptrrr->setAgentname(showagqry.value(1).toString());
        ptrrr->setAgent_mobno(showagqry.value(2).toString());
        ptrrr->setAgent_branch(showagqry.value(3).toString());
        ptrrr->setAgent_password(showagqry.value(4).toString());
        totalloanAgentdetails.push_back(ptrrr);
        loanagentname.push_back(showagqry.value(1).toString());
        loanagentbranch.push_back(showagqry.value(3).toString());
        qDebug()<<"show loan agents sucessfully"<<showagqry.value(1).toString()<<showagqry.value(3).toString()<<endl;
    }
}

bool Databaseclass::changepasswordofpigmyagent(QString name, QString password,QString newpassword)
{
    QSqlQuery qry(db);
    bool sucess;
    qry.prepare("SELECT * FROM pigmyagents");
    sucess=qry.exec();
    qDebug()<<"prepare=*************"<< sucess;//qry.prepare("select * FROM Login_authentication");
    qDebug()<<"dberror...."<<db.lastError()<<endl;
    qDebug()<<"sqlerror...."<<qry.lastError()<<endl;
    if(sucess){
        while (qry.next()) {
            if(qry.value(1).toString()==name && qry.value(4).toString()==password){
                qDebug()<<"testing of piggy agent sucessfull"<<qry.value(0).toString()<<qry.value(1).toString()<<qry.value(4).toString()<<Qt::endl;
                qry.prepare("UPDATE pigmyagents SET agentpassword=:upassword where agent_name=:agent_name");
                qry.bindValue(":upassword",newpassword);
                qry.bindValue(":agent_name",name);
                bool sucess= qry.exec();
                if(sucess){
                    qDebug()<<"insertion of agent new password sucessfully"<<endl;
                }else{
                    qDebug()<<"error in insertion of agent new password"<<endl;
                }
                return 1;
                //return  1;
            }else {
                qDebug()<<"back end data...."<<qry.value(0).toString()<<endl;
                qDebug()<<" testing of piggy agent not sucessfull"<<Qt::endl;
            }
        }
        return 0 ;
    }else{
        qDebug()<<" qryyyyyyyyyyyyyyyyyyyy failed"<<Qt::endl;
    }
    return  0;
}

bool Databaseclass::changePasswordofLoanagent(QString name, QString password, QString newpassword)
{
    QSqlQuery myqry(db);
    bool suc;
    myqry.prepare("SELECT * FROM loanagents");
    suc=myqry.exec();
    if(suc){
        while (myqry.next()) {
            if(myqry.value(1).toString()==name && myqry.value(4).toString()==password){
                qDebug()<<"testing of piggy agent sucessfull"<<myqry.value(0).toString()<<myqry.value(1).toString()<<myqry.value(4).toString()<<Qt::endl;
                myqry.prepare("UPDATE loanagents SET agentpassword=:upassword where agent_name=:agent_name");
                myqry.bindValue(":upassword",newpassword);
                myqry.bindValue(":agent_name",name);
                bool sucess= myqry.exec();
                if(sucess){
                    qDebug()<<"insertion of loan  agent new password sucessfully"<<endl;
                }else{
                    qDebug()<<"error in insertion of loan agent new password"<<endl;
                }
                return 1;
                // return  1;
            }else {
                qDebug()<<"back end data...."<<myqry.value(0).toString()<<endl;
                qDebug()<<" testing of loan agent not sucessfull"<<Qt::endl;
            }
        }
        return 0 ;
    }else{
        qDebug()<<" qryyyyyyyyyyyyyyyyyyyy failed"<<Qt::endl;
    }
    return  0;

}

void Databaseclass::insertintoadminlogintable()
{
    QSqlQuery myqr(db);
    myqr.prepare("SELECT * FROM Adminlogintable");
    bool suc1=myqr.exec();
    if(suc1){
        while(myqr.next()){
            if(myqr.value(0).toString()==NULL && myqr.value(1).toString()==NULL)
            {
                qDebug()<<"admin values are=="<<myqr.value(0).toString()<<myqr.value(1).toString()<<endl;
                myqr.prepare( "INSERT INTO Adminlogintable(name,password)""VALUES(:uname,:upass:)");
                myqr.bindValue(":uname","Admin");
                myqr.bindValue(":upass","a123");
                bool suc;
                suc=myqr.exec();
                if(suc){
                    qDebug()<<"insertion of admin default values sucessfully"<<endl;
                }else{
                    qDebug()<<"last error in insert of sample table"<<myqr.lastError()<<endl;
                    qDebug()<<"insertion of admin default values failed"<<endl;
                }
            }else{
                qDebug()<<"values are already available"<<endl;
            }
        }
    }
}

void Databaseclass::pigmycustomernamefromqml(QString name)
{
    setSelectpigmycudtomername(name);
    db.open();
    QSqlQuery query(db);
    if(!db.isOpen()){
        qDebug()<<Q_FUNC_INFO<<"db open failed in show"<<endl;
        //        db.open();
    }
    else {
        qDebug()<<Q_FUNC_INFO<<"db open sucessfull...in show"<<endl;
    }

    bool sucess;
    QString jat  = "SELECT * FROM CUSTOMERSS where AC_number=\""+getSelectpigmycudtomername()+"\"";
    qDebug()<<"Jat=-=-==pigmy"<<jat<<endl;
    query.prepare(jat);
    sucess=query.exec();
    if(sucess){
        qDebug()<<"shows sucessfully"<<Qt::endl;
    }else
    {
        qDebug()<<"error in showing the data view"<<Qt::endl;
    }
    //    query.exec();
    list.clear();
    dtls.clear();
    //pigmycustomername.clear();
    qDebug()<<Q_FUNC_INFO<<Qt::endl;
    while (query.next()) {
        qDebug()<<"here values aree in side"<<Qt::endl;
        Customers *ptr=new Customers;
        ptr->setCname((query.value(0).toString()));
        ptr->setmob_no((query.value(1).toString()));
        ptr->setadhar_no( (query.value(2).toString()));
        ptr->setpan_no( (query.value(3).toString()));
        ptr->setplace( (query.value(4).toString()));
        ptr->setbranch( (query.value(5).toString()));
        ptr->setagents( (query.value(6).toString()));
        ptr->setaccnumber(query.value(7).toInt());
        dtls.push_back(ptr);
        // pigmycustomername.push_back(ptr->Cname());

    }
    for(auto it=dtls.begin();it!=dtls.end();it++){
        qDebug()<<"name : "<<(*it)->Cname()<<(*it)->accnumber()<<Qt::endl;

    }

}

void Databaseclass::loancustacnumber(QString acnumber)
{
    setSelectloancustomeraccountnumber(acnumber);
    QSqlQuery query(db);
    bool sucess;
    sucess=query.exec();
    if(sucess){
    }else
    {
        qDebug()<<"error in showing the data"<<Q_FUNC_INFO<<Qt::endl;
    }
    QString loancust="SELECT * FROM LOAN_CUSTOMERS where AC_number=\""+selectloancustomeraccountnumber+"\"";
    qDebug()<<"Jat=-=-=="<<loancust<<endl;
    query.prepare(loancust);
    query.exec();
    qDebug()<<"shows sucessfully"<<acnumber<<Qt::endl;
    loandtls.clear();
    // loancustomeraccount_number.clear();
    qDebug()<<Q_FUNC_INFO<<Qt::endl;
    while (query.next()) {
        qDebug()<<"here"<<Qt::endl;
        Customers *ptr9=new Customers;
        ptr9->setCname((query.value(0).toString()));
        ptr9->setmob_no( (query.value(1).toString()));
        ptr9->setadhar_no( (query.value(2).toString()));
        ptr9->setpan_no( (query.value(3).toString()));
        ptr9->setplace( (query.value(4).toString()));
        ptr9->setbranch( (query.value(5).toString()));
        ptr9->setagents( (query.value(6).toString()));
        ptr9->setaccnumber(query.value(7).toInt());
        loandtls.push_back(ptr9);
        // loancustomeraccount_number.push_back(ptr9->accnumber());
        qDebug()<<"IN LOAN DETAILS&&&&"<<query.value(0).toString()<<Qt::endl;

    }
    for(auto it=loandtls.begin();it!=loandtls.end();it++){
        qDebug()<<"loan customer sname : "<<(*it)->Cname()<<(*it)->accnumber()<<Qt::endl;

    }

}

void Databaseclass::sampletablecreate()
{

    // QSqlQuery qry(db);
    db.open();
    QSqlQuery qry(db);
    if(!db.isOpen()){
        qDebug()<<Q_FUNC_INFO<<"db open failed in sampleex"<<db.isOpenError()<<endl;
        //        db.open();
    }
    else {
        qDebug()<<Q_FUNC_INFO<<"db open sucessfull...in sampleex"<<endl;

    }
    QString query="CREATE TABLE IF NOT EXISTS validationfinall3(work VARCHAR(20),name VARCHAR(20),password VARCHAR(20))";
    qry.prepare(query);
    if(!qry.exec())
    {
        qDebug()<<"error in sampleex table"<<qry.lastError();
    }
    else {
        qDebug()<<" sample table created sucessfully"<<Q_FUNC_INFO<<Qt::endl;
    }
    qDebug()<<"end";
}

void Databaseclass::inserintosampletable(QString works, QString name, QString password)
{
    QSqlQuery qryy(db);
    qryy.prepare("INSERT INTO validationfinall3(work,name,password) "
                 "VALUES (:ucustomer_name, :umobile_no,:uadhar_no)");
    qryy.bindValue(":ucustomer_name",works);
    qryy.bindValue(":umobile_no", name);
    qryy.bindValue(":uadhar_no", password);
    bool sucess=qryy.exec();
    if(sucess){
        qDebug()<<"last error in insert of sample table"<<qryy.lastError()<<endl;
        qDebug()<<"piggy validation detailsss details sucessfully inserted";
        qDebug()<<"details..."<<works<<name<<password;
    }
    else{
        qDebug()<<"failed";
    }
    qDebug()<<"***********************************";
}

void Databaseclass::AdminAuthenticationdetailsTable()
{
    QSqlQuery adminqry(db);
    db.open();
    if(!db.isOpen()){
        qDebug()<<Q_FUNC_INFO<<"db open failed in sampleex"<<db.isOpenError()<<endl;
        //        db.open();
    }
    else {
        qDebug()<<Q_FUNC_INFO<<"db open sucessfull...in sampleex"<<endl;
    }

    QString createtable="CREATE TABLE IF NOT EXISTS Adminlogintable(name VARCHAR(20),password VARCHAR(20))";
    adminqry.prepare(createtable);
    if(!adminqry.exec()){
        qDebug()<<"error in admin table "<<Q_FUNC_INFO<<endl;
    }else{
        qDebug()<<"admin table created sucessfully"<<Q_FUNC_INFO<<endl;
        adminqry.prepare("SELECT * FROM Adminlogintable");
        bool suc1=adminqry.exec();
        if(suc1){
            if(adminqry.next()){
                qDebug() << "Do not insert the default admin credentials";
                return;
            }
            else{
                qDebug() << "Please insert the default admin credentials";
                adminqry.prepare( "INSERT INTO Adminlogintable(name,password)""VALUES(:uname,:upass)");
                adminqry.bindValue(":uname","abc");
                adminqry.bindValue(":upass","123");
                bool suc;
                suc=adminqry.exec();
                if(suc){
                    qDebug()<<"insertion of admin default values sucessfully"<<endl;
                }else{
                    qDebug()<<"last error in insert of sample table"<<adminqry.lastError()<<endl;
                    qDebug()<<"insertion of admin default values failed"<<endl;
                }
            }
        }
    }



}

bool Databaseclass::insertdataintotheadmintable(QString adminoldname,QString adminoldpassword,QString adminnewname,QString adminnewpassword)
{
    QSqlQuery insertdata(db);
    insertdata.prepare("SELECT * FROM Adminlogintable limit 1");
    bool suc1=insertdata.exec();
    if(suc1){
        while(insertdata.next()){
            if(adminoldname==insertdata.value(0).toString() && adminoldpassword==insertdata.value(1).toString())
            {

                insertdata.prepare("UPDATE Adminlogintable SET name=:uname,password=:upassword");            //Adminlogintable(name,password)""VALUES(:uname,:up");
                insertdata.bindValue(":uname",adminnewname);
                insertdata.bindValue(":upassword",adminnewpassword);
                bool sucess= insertdata.exec();
                if(sucess){
                    qDebug()<<"insertion of admin table sucessfully"<<endl;
                }else{
                    qDebug()<<"error in insertion of admin table"<<endl;
                }
                return 1;
            }
            qDebug()<<"admin details are not correct, failed"<<endl;
            return 0;


        }
    }else{
        qDebug()<<"admin query failed"<<endl;
    }
    return 0;
}


bool Databaseclass::checkAdminCredientialsChangedorNot()
{
    QSqlQuery check(db);
    check.prepare("SELECT * FROM Adminlogintable");
    bool sucess=check.exec();
    if(sucess){
        while(check.next()){
            if(check.value(0).toString()!="abc" && check.value(1).toString() !="123"){
                qDebug()<<"admin crediantles are changed"<<endl;
                return 1;
            }else{
                qDebug()<<"admin crediantles are not changed"<<endl;
                return 0;
            }
        }
    }else{
        qDebug()<<"check query is not executed"<<endl;
    }
}



