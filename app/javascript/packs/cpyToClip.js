window.cpyToClip = function() {
    var copyText = document.getElementById("clipboard-btn");
    copyText.select();
    document.execCommand('copy')
    alert("Copied to clipboard")
}