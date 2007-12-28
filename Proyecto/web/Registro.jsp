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
                    <ui:form binding="#{Registro.form1}" id="form1"/>
                    <div class="header">
                        <jsp:directive.include file="header.jspf"/>
                    </div>
                    <div class="topnavigation" style="">
                        <jsp:directive.include file="topnavigation.jspf"/>
                    </div>
                    <div class="section" style="height: 477px">
                        <ui:panelLayout binding="#{Registro.layoutPanel1}" id="layoutPanel1" style="border: 1px solid rgb(255, 255, 255); background-color: rgb(153, 204, 255); height: 430px; left: 250px; top: 30px; position: absolute; width: 350px; -rave-layout: grid">
                            <ui:form binding="#{Registro.form2}" id="form2"/>
                            <ui:textField binding="#{Registro.nombreReg}" id="nombreReg" label="Nombre" style="right: 50px; top: 48px; position: absolute" valueChangeListener="#{Registro.nombreReg_processValueChange}"/>
                            <ui:textField binding="#{Registro.apellidosReg}" id="apellidosReg" label="Apellidos" style="right: 50px; top: 96px; position: absolute"/>
                            <ui:textField binding="#{Registro.nickReg}" id="nickReg" label="Nick" style="right: 50px; top: 144px; position: absolute"/>
                            <ui:textField binding="#{Registro.email}" id="email" label="Email" style="right: 50px; top: 192px; position: absolute"/>
                            <ui:calendar binding="#{Registro.nacimientoReg}" columns="15" id="nacimientoReg" label="Fecha de Nacimiento" style="right: 50px; top: 240px; position: absolute"/>
                            <ui:passwordField binding="#{Registro.contraseñaReg}" id="contraseñaReg" label="Contraseña" style="right: 50px; top: 288px; position: absolute"/>
                            <ui:passwordField binding="#{Registro.contraseñaRepReg}" id="contraseñaRepReg" label="Repite Contraseña" style="right: 50px; top: 336px; position: absolute"/>
                            <ui:button binding="#{Registro.enviarReg1}" id="enviarReg1" style="left: 150px; top: 384px; position: absolute" text="Enviar"/>
                        </ui:panelLayout>
                    </div>
                    <div class="footer">
                        <jsp:directive.include file="footer.jspf"/>
                    </div>
                </ui:body>
            </ui:html>
        </ui:page>
    </f:view>
</jsp:root>
