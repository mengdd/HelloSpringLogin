function clientValidate() {
    var username = document.getElementById("username"),
        password = document.getElementById("password");
    if (false == validateUserName(username.value)) {
        return false;
    }
    if (false == validatePassword(password.value)) {
        return false;
    }
    return true;
}

function validateUserName(username) {
    //rules for user name:
    //1.max length: 20;
    //2.only allows numbers and letters, no special character like /,*,% etc.
    if (username.length < 1 || username.length > 20) {
        alert("username's length should between 1 and 20");
        return false;
    }
    var pattern = new RegExp("^[0-9a-zA-Z]{1,20}$");

    var matched = pattern.test(username);
    if (!matched) {
        alert("username only allows numbers and letters, no special character!");
    }

    return matched;
}
function validatePassword(password) {
    //rule for password:
    //1.length should at least be 6;
    //2.must have 1 number, 1 upper, 1 lower;
    //3.no special character like /,*,% etc.

    if (password.length < 6) {
        alert("password's length should be at least 6");
        return false;
    }
    var pattern = new RegExp("^(?=.*[0-9].*)(?=.*[A-Z].*)(?=.*[a-z].*).{6,}$");
    var matched = pattern.test(password);

    if (!matched) {
        alert("password should have at least 1 number, 1 upper, 1 lower, no special character!");
    }

    return matched;

}