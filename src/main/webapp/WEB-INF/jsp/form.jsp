<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>写博客</title>
</head>
<body>
<s:form action="form" method="get" modelAttribute="admin">
    <table>
        <tr>
            <td>文章标题:</td>
            <td><s:input path="username"/></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><s:input path="age"/></td>
        </tr>
        <tr>
            <td>Agree？ :
            </td>
            <td><s:checkbox path="selected"/>同意？</td>
        </tr>
        <tr>
            <td>Roles:</td>
            <td>
                <s:checkboxes path="roles" items="${roleMap}"/>
            </td>
        </tr>
        <tr>
            <td>性别:</td>
            <td>
                <s:radiobutton path="sex" value="1"/>男
                <s:radiobutton path="sex" value="0"/>女
            </td>
        </tr>
        <tr>
            <td>博文类型:</td>
            <td><s:radiobuttons path="favorite" items="${ballMap}" delimiter="&nbsp;"/></td>
        </tr>
        <tr>
            <td>发表专栏:</td>
            <td><s:select path="favorite">
                <s:options items="${ballMap}"></s:options>
            </s:select>
            </td>
        </tr>
        <tr>
            <td>文章内容:</td>
            <td><s:textarea path="introduction" cols="20" rows="10"
            /></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="提交"/>
            </td>
        </tr>
    </table>
</s:form>
</body>
</html>
