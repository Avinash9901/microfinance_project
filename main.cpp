#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "customers.h"
#include "Datareceivedfromqml.h"
//#include "branch.h"
#include "report.h"
#include "viewtransaction.h"
#include "loancustomerdetailsview.h"
#include "loantransaction.h"
#include "Languages.h"
#include "Translation.h"
#include <QQmlContext>
#include "Agentslist.h"
#include "Agentclass.h"
#include "Agentdetailsofpigmy.h"
#include "AgentDetailsOfLoan.h"
#include "Adminviewofpigmycustomers.h"
#include "AdminviewofLoancustomers.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    //Customers ptr;
    Datareceivedfromqml datareceived;
    Report report;
    Agentslist age;
    Loancustomerdetailsview loanview;
    QQmlApplicationEngine engine;
    QQmlContext *rootContext = engine.rootContext();
    rootContext->setContextProperty("Receivedata", &datareceived);
    rootContext->setContextProperty("Agent2", &report);
    rootContext->setContextProperty("loancustomerdetails", &loanview);
    qmlRegisterType<Customers>("customer",1,0,"Cust");
    qmlRegisterType<Viewtransaction>("viewtrans",1,0,"Transaction");
    // qmlRegisterType<Loancustomerdetailsview>("Loanview",1,0,"Loancustomerview");
    qmlRegisterType<Loantransaction>("Loantransactionview",1,0,"Loantransactions");
    qmlRegisterType<Languages>("MyLanguage",1,0,"MyLanguage");
    qmlRegisterType<Agentclass>("Myagents",1,0,"Agents");
    qmlRegisterType<Agentdetailsofpigmy>("Pigmyagent",1,0,"PigmyAgents");
    qmlRegisterType<Adminviewofpigmycustomers>("Adminpigmycust",1,0,"Pigmycustomers");
    qmlRegisterType<AgentDetailsOfLoan>("MyLoanagent",1,0,"Loanagents");
    qmlRegisterType<AdminviewofLoancustomers>("Adminviewloancust",1,0,"Loancustomers");
    engine.rootContext()->setContextProperty("MyTrans",new Translation);
    rootContext->setContextProperty("totalagents",&age);
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
