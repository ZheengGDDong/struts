<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
<head>
    <title>Ajax Examples</title>
    <jsp:include page="/ajax/commonInclude.jsp"/>
</head>

<script type="text/javascript">
   function before() {alert("before request");}
   function after() {alert("after request");}
   function handler(widget, node) {
     alert('I will handle this myself!');
	 dojo.byId(widget.targetsArray[0]).innerHTML = "Done";
   }
</script>

<body>

<div id="t1">Div 1</div>


<br/><br/>

A submit button 
<s:submit type="submit" theme="ajax" value="submit" targets="t1" href="/AjaxTest.action"/>
<br/><br/>

Use an image as submit 

<s:submit type="image" theme="ajax" label="Alt Text" targets="t1" src="${pageContext.request.contextPath}/images/struts-power.gif" href="/AjaxTest.action"/>
<br/><br/>

<label for="textInput">Text to be echoed</label>
<br/><br/>

<s:form id="form" action="AjaxTest">
  <input type=textbox name="data">
  <s:submit type="button" theme="ajax" label="Update Content" targets="t1"  id="ajaxbtn"/>		
</s:form>
Use a button as submit (custom text)

		
<br/><br/>
	
<s:include value="../footer.jsp"/>

</body>
</html>
