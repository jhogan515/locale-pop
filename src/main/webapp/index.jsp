<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    
    <head>
        <meta charset="utf-8">
        <fmt:message key="page.title" var="pageTitle"/>
        <title><c:out value="${pageTitle}"/></title>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/jquery/themes/smoothness/jquery-ui.css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/jquery/themes/smoothness/jquery-ui.min.css">       

        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/jquery/themes/smoothness/theme.css">       
        
        <script src="${pageContext.request.contextPath}/resources/jquery/external/jquery/jquery.js"></script>
        <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
        <script src="jsresource.jsp" language="JavaScript" type="text/javascript"></script>

        <script>
            $(document).ready(function () {
                $("#dialog-confirm").dialog({
                    autoOpen: false,
                    resizable: false,
                    height: 140,
                    modal: true,
                    buttons: {
                        '<fmt:message key="button.cancel"/>': function () {
                            $(this).dialog("close");
                        },
                        '<fmt:message key="button.ok"/>': function () {
                            $(this).dialog("close");
                        }
                    }
                });

                $('#opener').click(function () {
                    $('#dialog-confirm').dialog('open');
                    //                  return false;
                });

            });

            function confirmBack2() {
                $('#dialog-confirm').dialog('open');
            }

        </script>
    </head>
    
    <body>
        <br/><br/>
        <fmt:message key="confirm.link.text" var="confirmLinkText"/>
        <a href="javascript:void(0)" onclick="confirmBack2(); return false;"><c:out value="${confirmLinkText}"/></a>

        <fmt:message key="open.dialog" var="openDialog"/>
        <button id="opener"><c:out value="${openDialog}"/></button>
        
        <fmt:message key="confirm.link.text" var="confirmLinkText"/>
        <fmt:message key="confirm.title" var="confirmCancelTitle"/>
        <div id="dialog-confirm" title='<c:out value="${confirmCancelTitle}"/>'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span><c:out value="${cancelMsg}"/><fmt:message key="confirm.back" var="cancelMsg"/><c:out value="${cancelMsg}"/></p>
        </div>

        <br/><br/>
        <font size="4">
        
        <p>
            <fmt:message key="page.info" var="pageInfo"/>
            <c:out value="${pageInfo}"/><br/><br/>
            
            <fmt:message key="special.characters" var="specialChars"/>
            <fmt:message key="un.umlaut" var="unUmlaut"/>
            <c:out value="${specialChars}"/>: <c:out value="${unUmlaut}"/><br/>
            <br/>
            
            <fmt:message key="reference.info" var="refInfo"/>
             <c:out value="${refInfo}"/>:<br/>
            <a href="http://www.oracle.com/technetwork/java/index-jsp-135995.html">JSP/JSTL fmt: tags</a>
            <br/>
            <a href="https://docs.oracle.com/javaee/6/api/javax/servlet/jsp/jstl/fmt/LocalizationContext.html">javax.servlet.jsp.jstl.fmt.localizationContext</a>.</p>
        </font> 
    </body>
    
</html>
