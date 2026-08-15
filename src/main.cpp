#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickStyle>
#include <QQmlError>
#include <QFontDatabase>
#include <cstdio>

#include "ColorUtils.h"
#include "Theme.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQuickStyle::setStyle(QStringLiteral("Basic"));

    // Register the Material Symbols Rounded variable font bundled in the
    // resources so the icon glyphs render even when the font is not
    // installed on the system.
    const int fontId = QFontDatabase::addApplicationFont(QStringLiteral(":/qml/fonts/MaterialSymbolsRounded.ttf"));
    if (fontId == -1)
        fprintf(stderr, "Failed to load bundled Material Symbols Rounded font\n");

    ColorUtils colorUtils;
    Theme theme;

    QQmlApplicationEngine engine;
    engine.addImportPath(QStringLiteral("qrc:/qml"));
    QObject::connect(&engine, &QQmlEngine::warnings,
                     [](const QList<QQmlError> &warnings) {
                         for (const QQmlError &w : warnings)
                             fprintf(stderr, "QML: %s:%d: %s\n",
                                     w.url().toString().toUtf8().constData(),
                                     w.line(), qPrintable(w.description()));
                     });
    engine.rootContext()->setContextProperty(QStringLiteral("ColorUtils"), &colorUtils);
    engine.rootContext()->setContextProperty(QStringLiteral("Appearance"), &theme);

    engine.load(QUrl(QStringLiteral("qrc:/qml/Main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}