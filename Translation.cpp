#include "Translation.h"
#include<QDebug>
Translation::Translation(QObject *parent)
    : QObject{parent}
{
    qDebug()<<Q_FUNC_INFO<<"tralslation constructor"<<endl;
}

const QString &Translation::getMylngstring() const
{
    return mylngstring;
}

void Translation::setMylngstring(const QString &newMylngstring)
{
    if (mylngstring == newMylngstring)
        return;
    mylngstring = newMylngstring;
    emit mylngstringChanged();
}

void Translation::updateLanguage(int lang)
{
    switch(lang)
    {

    case Languages::KAN:
    {
        qDebug()<<" in lang kannada"<<Qt::endl;
        mytranslator.load(":/Translationssss/Kannada.qm");
        break;
    }
    case Languages::ENG:
    {
        mytranslator.load(":/Translationssss/English.qm");
        break;
    }
    default:{
        qDebug()<<"NO lANGUAGE"<<Qt::endl;
    }
    }
    qApp->installTranslator(&mytranslator);
    emit mylngstringChanged();
    qDebug()<<" after the emitt"<<Qt::endl;
}
