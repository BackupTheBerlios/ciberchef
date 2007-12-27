<?xml version="1.0" encoding="UTF-8"?>
<jsp:root version="1.2" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html" xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:ui="http://www.sun.com/web/ui">
    <jsp:directive.page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"/>
    <f:view>
        <ui:page binding="#{Principal.page1}" id="page1">
            <ui:html binding="#{Principal.html1}" id="html1">
                <ui:head binding="#{Principal.head1}" id="head1">
                    <ui:link binding="#{Principal.link1}" id="link1" url="/resources/stylesheet.css"/>
                </ui:head>
                <ui:body binding="#{Principal.body1}" id="body1" style="-rave-layout: grid">
                    <ui:form binding="#{Principal.form1}" id="form1">
                        <div class="topnavigation" style="">
                            <jsp:directive.include file="topnavigation.jspf"/>
                        </div>
                        <div class="header">
                            <jsp:directive.include file="header.jspf"/>
                        </div>
                        <div class="section">
                            <ui:panelLayout binding="#{Principal.principalPanel}" id="principalPanel" style="height: 334px; width: 454px">
                                <ui:staticText binding="#{Principal.loginok}" id="loginok"
                                    style="height: 72px; left: 72px; top: 72px; position: absolute; width: 312px" text="HAS HECHO LOGIN CORRECTO,&#xa;LO CUAL ME PARECE PERFECTO.&#xa;&#xa;xDIOOOOOOOOOOOOOOOOOOOOOOOOS"/>
                            </ui:panelLayout>
                        </div>
                        <div class="footer">
                            <jsp:directive.include file="footer.jspf"/>
                        </div>
                    </ui:form>
                </ui:body>
            </ui:html>
        </ui:page>
    </f:view>
</jsp:root>
