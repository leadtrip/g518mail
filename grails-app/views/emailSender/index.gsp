<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Email Sender</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<div id="content" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="alert">
                ${flash.message}
            </div>
        </g:if>
        <h2>Email Sender Form</h2>
        <g:form controller="emailSender" action="send">
            <div class="form-group" row>
                <label for="address" class="col-sm-2 col-form-label">Email address</label>
                <div class="col-sm-10">
                    <g:textField name="address" placeholder="youremail@djamware.com" required="" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="address" class="col-sm-2 col-form-label">Subject</label>
                <div class="col-sm-10">
                    <g:textField name="subject" placeholder="Your Subject" required="" class="form-control"/>
                </div>
            </div>
            <div class="form-group">
                <label for="address" class="col-sm-2 col-form-label">Message</label>
                <div class="col-sm-10">
                    <g:textArea name="body" rows="5" cols="80" placeholder="Your message" required="" class="form-control"/>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-10">
                    <g:submitButton name="send" value="Send" class="btn btn-primary"/>
                </div>
            </div>
        </g:form>
</div>

</body>
</html>