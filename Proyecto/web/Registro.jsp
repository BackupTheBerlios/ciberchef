<?xml version="1.0" encoding="UTF-8"?>
<jsp:root version="1.2" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html" xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:ui="http://www.sun.com/web/ui">
    <jsp:directive.page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"/>
    <f:view>
        <ui:page binding="#{Registro.page1}" id="page1">
            <ui:html binding="#{Registro.html1}" id="html1">
                <ui:head binding="#{Registro.head1}" id="head1">
                    <ui:link binding="#{Registro.link1}" id="link1" url="/resources/stylesheet.css"/>
                </ui:head>
                <ui:body binding="#{Registro.body1}" id="body1" style="-rave-layout: grid">
                    <ui:form binding="#{Registro.form1}" id="form1">
                        <div class="topnavigation" style="">
                            <jsp:directive.include file="topnavigation.jspf"/>
                        </div>
                        <div class="header">
                            <jsp:directive.include file="header.jspf"/>
                        </div>
                        <div class="section" style="height: 510px">
                            <ui:panelLayout binding="#{Registro.panelReg1}" id="panelReg1" style="border: 1px solid rgb(255, 255, 255); background-color: rgb(153, 204, 255); height: 450px; left: 100px; top: 30px; position: absolute; width: 75%; -rave-layout: grid; min-width: 400.0px;">
                                <ui:textField binding="#{Registro.nombreReg1}" columns="30" id="nombreReg1" label="Nombre"
                                    style="right: 50px; top: 240px; position: absolute" valueChangeListener="#{Registro.nombreReg_processValueChange}"/>
                                <ui:textField binding="#{Registro.apellidosReg1}" columns="30" id="apellidosReg1" label="Apellidos" style="right: 50px; top: 288px; position: absolute"/>
                                <ui:textField binding="#{Registro.nickReg1}" columns="30" id="nickReg1" label="Nick" required="true" style="right: 50px; top: 48px; position: absolute"/>
                                <ui:textField binding="#{Registro.emailReg1}" columns="30" id="emailReg1" label="Email" required="true" style="right: 50px; top: 192px; position: absolute"/>
                                <ui:calendar binding="#{Registro.nacimientoReg1}" columns="25" id="nacimientoReg1" label="Fecha de Nacimiento" style="right: 50px; top: 336px; position: absolute"/>
                                <ui:passwordField binding="#{Registro.contraseñaReg1}" columns="30" id="contraseñaReg1" label="Contraseña" required="true" style="right: 50px; top: 96px; position: absolute"/>
                                <ui:passwordField binding="#{Registro.contraseñaRepReg1}" columns="30" id="contraseñaRepReg1" label="Repite Contraseña"
                                    required="true" style="right: 50px; top: 144px; position: absolute"/>
                                <ui:button binding="#{Registro.enviarReg1}" id="enviarReg1"
                                    style="border-width: 3px; border-style: solid; right: 50px; top: 420px; position: absolute" text="Enviar"/>
                                <ui:staticText binding="#{Registro.staticText1}" id="staticText1"
                                    style="font-style: oblique; left: 48px; top: 430px; position: absolute" text="Campos obligatorios"/>
                                <ui:staticText binding="#{Registro.staticText2}" id="staticText2"
                                    style="color: red; font-size: 24px; left: 30px; top: 430px; position: absolute" text="*"/>
                            </ui:panelLayout>
                            <ui:panelLayout binding="#{Registro.tituloReg1}" id="tituloReg1" style="background-color: black; height: 40px; left: 280px; top: 20px; width: 128px">
                                <ui:staticText binding="#{Registro.staticText3}" id="staticText3"
                                    style="color: white; font-size: 24px; font-weight: bold; height: 24px; right: 5px; top: 5px; position: absolute" text="Regístrate"/>
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
