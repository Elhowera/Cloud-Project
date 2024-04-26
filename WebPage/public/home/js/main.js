const memberId = window.location.href.toString().split("/").at(-1);
console.log(memberId)

const username = document.getElementById("name");
const id = document.getElementById("id");
const description = document.getElementById("desc");
const image = document.getElementById("img");

fetch(`/db/members/${memberId}`, {
    method: "GET",
    credentials: "same-origin"
}).then(async res => {
    const body = await res.json();

    username.innerText = body.user.Name;
    id.innerText = `ID: ${body.user.ID}`;
    description.innerText = `I am ${body.user.Age} Years old, I have a CGPA of ${body.user.CGPA}.\n${body.user.Description}`;
    image.srcset = `/assets/6626b92680e967f279da33af/${body.user.Image}`
})

