<html>
<head>
<script chartset="utf-8" type="text/javascript" src="${resource(dir: 'js', file: 'jquery_v2.10.0.js')}"></script>
</head>
<body>
    <script type="text/javascript">
    $(function() {
        $('#checkout').click()
    });
    </script>
    <g:form action="checkout" useToken="">
        <g:hiddenField name="orderStatusTracking" value="${orderStatusTracking }"/>
        <div style="display: none">
            <g:submitButton name="checkout"/>
        </div>
    </g:form>
</body>
</html>