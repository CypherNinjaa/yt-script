function loadData() {
    let xhr = new XMLHttpRequest();

    xhr.open("GET", "data.txt", true);

    xhr.onload = function(){
        if (this.status===200) {
            document.getElementById("output").innerHTML = this.responseText;
        }
    }
    xhr.send();
}