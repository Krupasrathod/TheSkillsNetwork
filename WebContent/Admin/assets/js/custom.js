function onlyNumeric(e, t) {
    try {
        if (window.event) {
            var charCode = window.event.keyCode;
        }
        else if (e) {
            var charCode = e.which;
        }
        else { return true; }
        //  32 for Space, 8 for backspace, 46 for delete
        // 48 to 57 for 0 to 9
        // 96 to 105 for numberic pad 0 to 9
        if ((charCode >= 48 && charCode <= 57) ||(charCode >= 37 && charCode <= 40)  || charCode == 32 || charCode == 8 || charCode == 46 || charCode == 9)
            return true;
        else
            return false;
    }
    catch (err) {
        alert(err.Description);
    }
}



function onlyAlphabets(e, t) {	
    try {
        if (window.event) {
            var charCode = window.event.keyCode;
        }
        else if (e) {
            var charCode = e.which;
        }
        else { return true; }
        //  32 for Space, 8 for backspace, 46 for delete
        // 65 to 90 for A to Z
        // 48 to 57 for 0 to 9
        // 96 to 105 for numberic pad 0 to 9
        if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122) || charCode == 32 || charCode == 8 || charCode == 46 || charCode == 9) {
            return true;
        }
        else {
            return false;
        }
    }
    catch (err) {
        alert(err.Description);
    }
}