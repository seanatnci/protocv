<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
        <meta name="layout" content="main"/>
        <link type="text/css" href="${resource(dir: 'css', file: 'normalize.css')}" />
        <r:require module="application"/>
   </head>
    <body>
        <h3>Checkout</h3>
<label class="payment-errors"></label>
<stripe:script formName="payment-form"/>

<g:form action="charge" method="POST" name="payment-form" class="pure-form pure-form-aligned"> 
  <span class="payment-errors"></span>
  <div class="form-row"> <label>Amount (USD)</label> <input type="text" size="20" autocomplete="off" id="amount" name="amount"/> </div>

<stripe:creditCardInputs cssClass="form-row"/>

<button type="submit">Submit Payment</button> <g:img uri="/images/glossy.png"/>
</g:form> 
</body>
</html>
