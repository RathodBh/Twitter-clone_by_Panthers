//validations

let year1 = document.querySelector("#year");
let month1 = document.querySelector("#month");
let day1 = document.querySelector("#day");
day1.addEventListener("change", function (e) {
  console.log("Val", e.currentTarget.value)
  if (e.currentTarget.value == "") {
    alert("Please select")
  }

  checkValidationForm1()
})
async function checkValidationForm1() {
  let is_valid = true;
  const uname = document.querySelector("#name").value;
  const email = document.querySelector("#email").value;
  const year = document.querySelector("#year").value;
  const month = document.querySelector("#month").value;
  const day = document.querySelector("#day").value;
  const next = document.querySelector("#next");


  // const regExEmail = /^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/;
  // let test_email = regExEmail.test(email);



  let valid_email = await checkuserEmail(document.querySelector("#email"))

  if (uname == "" || email == "" || year == "year" || month == "month" || day == "day" || !day || !valid_email) {
    is_valid = false
  }

  // if (!test_email && email != "") {
  //   let emailErrMsg = document.getElementById('emailError')
  //   emailErrMsg.innerHTML = `<span class="text-danger">Please enter valid email</span>`
  // }

  if (!is_valid) {
    next.setAttribute("disabled", "true");
  }
  else {
    next.removeAttribute("disabled");
  }

}
checkValidationForm1()

const allInputs = document.querySelectorAll("#name,#email");
allInputs.forEach((input) => {
  input.addEventListener("input", checkValidationForm1)
})


//variables
const allBtns = document.querySelectorAll(".next");
const allParts = document.querySelectorAll(".user > div");
const allPrevBtns = document.querySelectorAll(".prev");
let prev = document.querySelector("#prev")
let next = document.querySelector("#next")

//set width
const updateLength = () => {
  let allParts = document.querySelectorAll(".user > div");
  document.querySelector(".user").style.width = `${allParts.length * 100}%`;
}
updateLength();

const updateTransition = (i) => {
  let allParts = document.querySelectorAll(".user > div");
  allParts.forEach((cur) => {
    cur.style.transform = `translateX(-${i * 100}%)`;
  });
}

let i = 0;
checkStatus(i)
next.addEventListener("click", (e) => {
  ++i;
  updateTransition(i);
  checkStatus(i)
})
prev.addEventListener("click", (e) => {
  --i;
  updateTransition(i);
  checkStatus(i)
})

function checkStatus(i) {

  let allParts = document.querySelectorAll(".user > div");

  next.classList.toggle("w-50");
  next.classList.toggle("w-100");
  if (i == 0) {
    prev.style.display = "none";
    next.setAttribute("id", "next")
    next.setAttribute("type", "button")
    next.setAttribute("value", "NEXT")

  }
  else if (i == allParts.length - 1 || i == allParts.length) {
    prev.style.display = "block";
    next.setAttribute("value", "SIGN UP")
    setTimeout(() => {
      // debugger
      next.setAttribute("type", "submit")
      next.setAttribute("id", "submit")
    }, 1)
  }
  else {
    prev.style.display = "block";
    prev.style.width = "100%";
    next.setAttribute("id", "next")
    next.setAttribute("value", "NEXT")
    next.setAttribute("type", "button")
  }
  // console.log(allParts.length);
}


//swipper carousel
var swiper = new Swiper(".mySwiper", {
  effect: "fade",
  grabCursor: true,
  cubeEffect: {
    shadow: true,
    slideShadows: true,
    shadowOffset: 20,
    shadowScale: 0.94,
  },
  loop: true,
  autoplay: {
    delay: 3000,
    disableOnInteraction: false,
  },
});

//date of birth by jigar
var Days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];// index => month [0-11]
$(document).ready(function () {

  var option = '<option value="day" selected hidden disabled>day</option>';
  var selectedDay = "day";
  for (var i = 1; i <= Days[0]; i++) { //add option days
    option += '<option value="' + i + '">' + i + '</option>';
  }
  $('#day').append(option);
  $('#day').val(selectedDay);

  var option = '<option value="month"  selected hidden disabled>month</option>';
  var selectedMon = "month";
  for (var i = 1; i <= 12; i++) {
    option += '<option value="' + i + '">' + i + '</option>';
  }
  $('#month').append(option);
  $('#month').val(selectedMon);

  var option = '<option value="month" selected hidden disabled>month</option>';
  var selectedMon = "month";
  for (var i = 1; i <= 12; i++) {
    option += '<option value="' + i + '">' + i + '</option>';
  }
  $('#month2').append(option);
  $('#month2').val(selectedMon);

  var d = new Date();
  var option = '<option value="year" selected hidden disabled>year</option>';
  selectedYear = "year";
  var ThisYear = d.getFullYear()
  for (var i = ThisYear; i >= 1930; i--) {// years start i
    option += '<option value="' + i + '">' + i + '</option>';
  }
  $('#year').append(option);
  $('#year').val(selectedYear);
});
function isLeapYear(year) {
  year = parseInt(year);
  if (year % 4 != 0) {
    return false;
  } else if (year % 400 == 0) {
    return true;
  } else if (year % 100 == 0) {
    return false;
  } else {
    return true;
  }
}

function change_year(select) {
  select.size = 0;
  if (isLeapYear($(select).val())) {
    Days[1] = 29;

  }
  else {
    Days[1] = 28;
  }
  if ($("#month").val() == 2) {
    var day = $('#day');
    var val = $(day).val();
    $(day).empty();
    var option = '<option value="day" selected  disabled>day</option>';
    for (var i = 1; i <= Days[1]; i++) { //add option days
      option += '<option value="' + i + '">' + i + '</option>';
    }
    $(day).append(option);
    if (val > Days[month]) {
      val = 1;
    }
    $(day).val(val);
  }
  checkValidationForm1()
}

function change_month(select) {
  select.size = 0;
  var day = $('#day');
  var val = $(day).val();
  $(day).empty();
  var option = '<option value="day" selected hidden disabled>day</option>';
  var month = parseInt($(select).val()) - 1;
  for (var i = 1; i <= Days[month]; i++) { //add option days
    option += '<option value="' + i + '">' + i + '</option>';
  }
  $(day).append(option);
  if (val > Days[month]) {
    val = 1;
  }
  $(day).val(val);

  checkValidationForm1()

}



//username Limit
const unm = document.getElementById("username");
const unmLimit = document.getElementById("usernameLimit");
const usernameError = document.getElementById("usernameError");
unm.addEventListener("input", (e) => {
  if (e.target.value.length >= 50) {
    unm.style.boxShadow = "0 0 1px 3px red";
    usernameError.innerText = "Username must be less than 50 characters";
  } else {
    unm.style.boxShadow = "none";
    usernameError.innerText = "";
  }
  e.target.value = e.target.value.substring(0, 50);
  unmLimit.innerText = e.target.value.length + " / " + 50;
})



///BY Jigar

async function checkusername(e) {
  const save_req = await fetch(`/user/sign-up/checkusername`, {
    method: "POST",
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      data: e.value

    })
  });

  var resSave = await save_req.json();
  if (resSave.isNew == true) {
    let usermsg = document.getElementById('usernameError')
    let content = `<span style="color: #1c800f; font-size:14px">Username Available</span>`
    usermsg.innerHTML = content
    return true
  }
  else {
    let usermsg = document.getElementById('usernameError')
    let content = `<span style="color: #b9370f; font-size:14px">Username unAvailable</span>`
    usermsg.innerHTML = content;
    return false;
  }

}


async function checkuserEmail(e) {
  let email = e.value
  const regExEmail = /^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/;
  let test_email = regExEmail.test(email);

  if (!test_email && email != "") {
    let emailErrMsg = document.getElementById('emailError')
    emailErrMsg.innerHTML = `<span class="text-danger">Please enter valid email</span>`
    return false;
  } else {

    const save_req = await fetch(`/user/sign-up/checkemail`, {
      method: "POST",
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        data: e.value

      })
    });

    var resSave = await save_req.json();

    if (resSave.isNew == true) {
      let usermsg = document.getElementById('emailError')
      let content = `<span  class="text-success"></span>`
      usermsg.innerHTML = content
      return true
    }
    else {
      let usermsg = document.getElementById('emailError')
      let content = `<span class="text-danger">Email ID Already Exists!</span>`
      usermsg.innerHTML = content;
      return false
    }
  }

}

async function checkemailforlogin(e) {
  let email = e.value

  const save_req = await fetch(`/user-login/checkemail`, {
    method: "POST",
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      data: e.value

    })
  });

  var resSave = await save_req.json();
  if (resSave.isNew == true) {
    let usermsg = document.getElementById('emailError')
    let content = `<span style="color: #1c800f;"></span>`
    usermsg.innerHTML = content
    return true
  }
  else {
    let usermsg = document.getElementById('emailError')
    let content = `<span style="color: #b9370f;">User Already Exists!</span>`
    usermsg.innerHTML = content;
    return false
  }
}