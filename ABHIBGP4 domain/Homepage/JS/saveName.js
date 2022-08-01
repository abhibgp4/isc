var nameList = [
    { name: "Abhijeet" },
    { name: "Ramesh" }
];
function addName() {
    var x = document.getElementsByTagName("input")[0].value;
    console.log(x);
    var tempName = {
        name: x
    }
    nameList.push(tempName);
    console.log(JSON.stringify(nameList));

    str = "";
    nameList.forEach(function (name) {
        str += `<li> ${name.name} </li> `
    });
    document.getElementById('nameList').innerHTML = str;
}

console.log(JSON.stringify(nameList));