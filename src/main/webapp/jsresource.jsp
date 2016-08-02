<%-- 
    Document   : jsresource
    Created on : May 13, 2016, 2:37:35 PM
    Author     : jhogan
--%>
<%@page contentType="text/javascript" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

  function confirmBack() {
    $( "#dialog-confirm" ).dialog({
      resizable: false,
      height:140,
      modal: true,
      buttons: {
        '<fmt:message key="button.cancel" var="cancelTxt"/>': function() {
          $( this ).dialog( "close" );
        },
        '<fmt:message key="button.ok" var="okTxt"/>': function() {
          $( this ).dialog( "close" );
        }
      }
    });
  };
  