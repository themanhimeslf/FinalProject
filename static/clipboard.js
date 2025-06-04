function copyToClipboard(text) {
    navigator.clipboard.writeText(text).then(() => {
        alert("Copied to clipboard: " + text);
    }).catch(err => {
        console.error("Failed to copy: ", err);
    });
// }  ØDELAGT VET IKKE HVORFOR IKKE FUNKER PÅ WEBSITE HOSTED PÅ PI, FIKS?