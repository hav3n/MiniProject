function emailValidation(objSource, args) {
    var text = args.Value.trim();
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

    var parent = $("#" + objSource.id).prev(".form-control").parent();

    //Empty
    if (text === "") {
        //Remove existing spans
        parent.find("span[id^='icon']").remove();
        parent.removeClass("has-success");

        parent.addClass("has-error");
        parent.append("<span id='icon' class='glyphicon glyphicon-remove form-control-feedback'></span>");
        args.IsValid = false;
    } else if (!re.test(text)) {
        parent.find("span[id^='icon']").remove();
        parent.removeClass("has-success");

        parent.addClass("has-error");
        parent.append("<span id='icon' class='glyphicon glyphicon-remove form-control-feedback'></span>");
        args.IsValid = false;
    } else {
        //Valid
        parent.find("span[id^='icon']").remove();
        parent.removeClass("has-error");

        parent.addClass("has-success");
        parent.append("<span id='icon' class='glyphicon glyphicon-ok form-control-feedback'></span>");
        args.IsValid = true;
    }
}

function passwordValidation(objSource, args) {
    var text = args.Value.trim();
    var re = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;

    var parent = $("#" + objSource.id).prev(".form-control").parent();

    //Empty
    if (text === "") {
        //Remove existing spans
        parent.find("span[id^='icon']").remove();
        parent.removeClass("has-success");

        parent.addClass("has-error");
        parent.append("<span id='icon' class='glyphicon glyphicon-remove form-control-feedback'></span>");
        args.IsValid = false;
    } else if (!re.test(text)) {
        parent.find("span[id^='icon']").remove();
        parent.removeClass("has-success");

        parent.addClass("has-error");
        parent.append("<span id='icon' class='glyphicon glyphicon-remove form-control-feedback'></span>");
        args.IsValid = false;
    } else {
        //Valid
        parent.find("span[id^='icon']").remove();
        parent.removeClass("has-error");

        parent.addClass("has-success");
        parent.append("<span id='icon' class='glyphicon glyphicon-ok form-control-feedback'></span>");
        args.IsValid = true;
    }
}

function nameValidation(objSource, args) {
    var text = args.Value.trim();

    var re = /^[a-z ,.'-]+$/i;

    var parent = $("#" + objSource.id).prev(".form-control").parent();

    //Empty
    if (text === "") {
        //Remove existing spans
        parent.find("span[id^='icon']").remove();
        parent.removeClass("has-success");

        parent.addClass("has-error");
        parent.append("<span id='icon' class='glyphicon glyphicon-remove form-control-feedback'></span>");
        args.IsValid = false;
    } else if (!re.test(text)) {
        parent.find("span[id^='icon']").remove();
        parent.removeClass("has-success");

        parent.addClass("has-error");
        parent.append("<span id='icon' class='glyphicon glyphicon-remove form-control-feedback'></span>");
        args.IsValid = false;
    } else {
        //Valid
        parent.find("span[id^='icon']").remove();
        parent.removeClass("has-error");

        parent.addClass("has-success");
        parent.append("<span id='icon' class='glyphicon glyphicon-ok form-control-feedback'></span>");
        args.IsValid = true;
    }
}

function compareValidation(objSource, args) {

    var password1 = $('#BodyContentPlaceHolder_passTextBox').val();
    var password2 = $('#BodyContentPlaceHolder_reEnterPassTextBox').val();

    console.log(password1)
    console.log(password2)

    var parent = $("#" + objSource.id).prev(".form-control").parent();

    if (password1 === password2) {
        parent.find("span[id^='icon']").remove();
        parent.removeClass("has-error");

        parent.addClass("has-success");
        parent.append("<span id='icon' class='glyphicon glyphicon-ok form-control-feedback'></span>");
        args.IsValid = true;
    } else {
        parent.find("span[id^='icon']").remove();
        parent.removeClass("has-success");

        parent.addClass("has-error");
        parent.append("<span id='icon' class='glyphicon glyphicon-remove form-control-feedback'></span>");
        args.IsValid = false;
    }

}