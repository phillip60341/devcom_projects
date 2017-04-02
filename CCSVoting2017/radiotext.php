<form onsubmit="return confirm('Do you really want to submit the form?');">
   <input type="image" src="xxx" border="0" name="submit" onclick="show_alert();"
      alt="PayPal - The safer, easier way to pay online!" value="Submit">
</form>
	<script>
function validate(form) {

    // validation code here ...


    if(!valid) {
        alert('Please correct the errors in the form!');
        return false;
    }
    else {
        return confirm('Do you really want to submit the form?');
    }
}
</script>
<form onsubmit="return validate(this);">