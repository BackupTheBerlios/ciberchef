<?xml version="1.0" encoding="UTF-8"?>
<jsp:root version="1.2" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html" xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:ui="http://www.sun.com/web/ui">
    <jsp:directive.page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"/>
    <f:view>
        <ui:page binding="#{Login.page1}" id="page1">
            <ui:html binding="#{Login.html1}" id="html1" lang="es">
                <ui:head binding="#{Login.head1}" id="head1" title="Ciberchef. Genera tu menú y se feliz">
                    <ui:link binding="#{Login.link1}" id="link1" url="/resources/stylesheet.css"/>
                </ui:head>
                <ui:body binding="#{Login.body1}" id="body1" style="-rave-layout: grid">
                    <ui:form binding="#{Login.form1}" id="form1">
                        <div class="topnavigation" style="">
                            <jsp:directive.include file="topnavigation.jspf"/>
                        </div>
                        <div class="header">
                            <jsp:directive.include file="header.jspf"/>
                        </div>
                        <div class="section" style="background-image: url(./resources/lineas.jpg); background-position: 50% 100%; background-repeat: repeat-x">
                            <ui:panelLayout binding="#{Login.section}" id="section" style="height: 216px; position: relative; width: 360px; -rave-layout: grid">
                                <ui:staticText binding="#{Login.staticText1}" id="staticText1"
                                    style="padding: 20px 30px 20px 20px; background-image: url(./resources/postit.jpg); background-repeat: no-repeat; height: 270px; left: 336px; top: 24px; position: absolute; width: 236px" text="Esto es una prueba de página de login.&#xa;Usuario:guest&#xa;Password:guest"/>
                                <ui:panelLayout binding="#{Login.loginPanel}" id="loginPanel" style="border: 1px solid rgb(255, 255, 255); background-color: rgb(153, 204, 255); height: 166px; left: 24px; top: 48px; position: absolute; width: 286px; -rave-layout: grid">
                                    <ui:staticText binding="#{Login.errorlogin}" id="errorlogin" style="color: rgb(255, 0, 51)" text="Login Incorrecto" visible="false"/>
                                    <ui:textField binding="#{Login.user}" id="user" label="Usuario" style="right: 50px; top: 24px; position: absolute"/>
                                    <ui:passwordField binding="#{Login.pass}" id="pass" label="Password" style="right: 50px; top: 48px; position: absolute"/>
                                    <ui:hyperlink binding="#{Login.hyperlink2}" id="hyperlink2"
                                        style="color: rgb(255, 255, 255); left: 24px; top: 96px; position: absolute" text="Olvidó su contraseña"/>
                                    <ui:hyperlink binding="#{Login.hyperlink1}" id="hyperlink1"
                                        style="color: rgb(255, 255, 255); left: 24px; top: 120px; position: absolute" text="Registrarse"/>
                                    <ui:button action="#{Login.btn_login_action}" binding="#{Login.btn_login}" id="btn_login"
                                        style="right: 50px; top: 99px; position: absolute" text="Login"/>
                                </ui:panelLayout>
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
