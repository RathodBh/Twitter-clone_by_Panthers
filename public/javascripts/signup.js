//validations

let year1 = document.querySelector("#year");
let month1 = document.querySelector("#month");
let day1 = document.querySelector("#day");
day1.addEventListener("change", function (e) {
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
  const nextBtn1 = document.querySelector("#nextBtn1");



  const currYear = new Date().getFullYear();
  let currectYear = false
  if (year != "" && year != "year") {
    if (currYear - year >= 13) {
      currectYear = true;
      document.querySelector("#yearError").innerHTML = ""

    } else {
      document.querySelector("#yearError").innerHTML = "You can't use twitter, Age must be greater than 13"
    }
  }

  let valid_email = await checkuserEmail(document.querySelector("#email"))

  if (uname == "" || email == "" || year == "year" || month == "month" || day == "day" || !day || !valid_email || !currectYear) {
    is_valid = false
  }

  if (!is_valid) {
    nextBtn1.setAttribute("disabled", "true");
  }
  else {
    nextBtn1.removeAttribute("disabled");
  }

}
checkValidationForm1()

document.querySelector("#password").addEventListener("input", checkValidationForm2)
document.querySelector("#username").addEventListener("input", checkValidationForm2)
document.querySelector("#cpassword").addEventListener("input", checkValidationForm2)

async function checkValidationForm2() {
  let is_valid = true;
  const pwd = document.querySelector("#password").value;
  const cpwd = document.querySelector("#cpassword").value;
  const username = document.querySelector("#username").value;
  let next2 = document.querySelector("#nextBtn2");


  let checkCpass = checkConfirmPass();
  let checkUniqueUser = await checkusername(document.querySelector("#username"));

  if (username == "" || pwd == "" || cpwd == "" || !checkCpass || !checkUniqueUser) {
    is_valid = false
  }

  if (!is_valid) {
    next2.setAttribute("disabled", "true");
  }
  else {
    next2.removeAttribute("disabled");
  }
}

function checkConfirmPass() {
  let pwd = document.querySelector("#password").value;
  let cpwd = document.querySelector("#cpassword").value;
  let passErr = document.querySelector("#cpassErr");
  if (pwd == "" || cpwd == "") {
    passErr.innerText = ""
  }
  else if (pwd != cpwd) {
    passErr.innerText = "Password and confirm password are not match"
  } else {
    passErr.innerText = ""
    return true;
  }
  return false;
}

const allInputs = document.querySelectorAll("#name,#email");

allInputs.forEach((cur) => {
  cur.addEventListener("input", checkValidationForm1)
})

const pwd = document.querySelector("#password");
pwd.addEventListener("input", checkPwd)
//variables
const allBtns = document.querySelectorAll(".next");
const allParts = document.querySelectorAll(".user > div");
const allPrevBtns = document.querySelectorAll(".prev");
let prev = document.querySelector("#prev")
let next = document.querySelector("#next")

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
  
  for (var i = ThisYear; i >= (ThisYear-100); i--) {// years start i
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
unm.addEventListener("input", async (e) => {
  if (e.target.value.length >= 50) {
    usernameError.innerText = "Username must be less than 50 characters";
  } else {
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
    // usermsg.innerHTML = ""
    return true
  }
  else {
    let usermsg = document.getElementById('usernameError')
    let content = `Username already exists!`
    usermsg.innerHTML = content;
    return false;
  }

}
function checkPwd() {
  let pwd = document.querySelector("#password").value;
  let passErr = document.querySelector("#passError");
  if (pwd.length < 8 || pwd.length > 16) {
    passErr.innerText = "Password must be 8 to 16 characters long";
  }
  else if (!(/[a-z]/.test(pwd))) {
    passErr.innerText = "Password must contain atleast 1 lowercase character";
  }
  else if (!(/[A-Z]/.test(pwd))) {
    passErr.innerText = "Password must contain atleast 1 uppercase character";
  }
  else if (!(/\d/.test(pwd))) {
    passErr.innerText = "Password must contain atleast 1 digit";
  }
  else if (!(/[^a-zA-Z0-9]/.test(pwd))) {
    passErr.innerText = "Password must contain atleast 1 Special character like, @,#,$,*";
  }
  else {
    passErr.innerText = "";
    return true;
  }
  return false;
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
      document.querySelector("#emailOTP").value = email;
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


}


//JS
//for stopping the hide modal
var myModal = new bootstrap.Modal(document.getElementById('signup'), {
  keyboard: false,
  backdrop: false
})

//auto show the modal
myModal.show();
const togglePassword = document.querySelector('#togglePassword');
const password = document.querySelector('#password');

togglePassword.addEventListener('click', function (e) {
  // toggle the type attribute
  const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
  password.setAttribute('type', type);

  // toggle the eye slash icon
  if (this.classList.contains('fa-eye-slash')) {
    this.classList.remove('fa-eye-slash');
    this.classList.add('fa-eye');
  } else {
    this.classList.remove('fa-eye');
    this.classList.add('fa-eye-slash');
  }
});
window.addEventListener("load", function () {
  const loader = document.querySelector(".loader");
  loader.className += " hidden"; // class "loader hidden"
});


//new Wizard for hideshow part content

let part1 = document.querySelector("#part1");
let part2 = document.querySelector("#part2");
let part3 = document.querySelector("#part3");
part2.classList.add('d-none');

let nextBtn1 = document.querySelector("#nextBtn1");
nextBtn1.addEventListener("click", () => {

  // let username = document.querySelector("#username").autofocus()
  part1.style.translate = "-100%";
  part2.style.translate = "0%";
  part3.style.translate = "100%";
  setTimeout(() => {
    part1.classList.add('d-none');
    part2.classList.remove('d-none');
    part3.classList.add('d-none');
  }, 270);
})

let prevBtn2 = document.querySelector("#prevBtn2");
prevBtn2.addEventListener("click", () => {
  part1.style.translate = "0%";
  part2.style.translate = "100%";
  part3.style.translate = "200%";
  setTimeout(() => {
    part1.classList.remove('d-none');
    part2.classList.add('d-none');
    part3.classList.add('d-none');
  }, 270);
})
let prevBtn3 = document.querySelector("#prevBtn3");
prevBtn3.addEventListener("click", () => {
  part1.style.translate = "-100%";
  part2.style.translate = "0%";
  part3.style.translate = "100%";
  setTimeout(() => {
    part1.classList.add('d-none');
    part2.classList.remove('d-none');
    part3.classList.add('d-none');
  }, 270);
})

let nextBtn2 = document.querySelector("#nextBtn2");
nextBtn2.addEventListener("click", () => {

  // let username = document.querySelector("#username").autofocus()
  part1.style.translate = "-200%";
  part2.style.translate = "-100%";
  part3.style.translate = "0%";
  setTimeout(() => {
    part1.classList.add('d-none');
    part2.classList.add('d-none');
    part3.classList.remove('d-none');
  }, 400);
})

//send OTP
let sendOtpBtn = document.querySelector("#sendOTP");
sendOtpBtn.addEventListener("click", async () => {

  let curEmail = document.querySelector("#emailOTP").value;

  let sendEmail = await fetch(`/forget/sendMail?email=${curEmail}`);
  let isSend = await sendEmail.json();

  if (isSend.ans == true) {
    ToastErr.fire({
      icon: 'success',
      title: `OTP send successfully, Please check your mail`
    })
    document.querySelector("#otpSection").classList.remove('d-none');
    sendOtpBtn.setAttribute("disabled", "true");
    let timer = 61;
    let timerOtp = document.querySelector(".timerOtp");
    timerOtp.classList.remove("d-none");

    let timerOtpInfo = document.querySelector("#infoTag");
    let timerOfOtp = setInterval(() => {
      if (timer > 0) {
        --timer;
        timerOtpInfo.innerHTML = timer;
      } else {
        clearInterval(timerOfOtp);
        timerOtp.classList.add("d-none");
        sendOtpBtn.innerHTML = "Resend OTP";
        sendOtpBtn.removeAttribute("disabled");
      }
    }, 1000)
  } else {
    ToastErr.fire({
      icon: 'error',
      title: `Something went wrong`
    })
  }
});

let otp = document.querySelector("#otp");
otp.addEventListener("input", async () => {
  if (otp.value.length == 6) {
    document.querySelector("#nextBtn3").removeAttribute("disabled");
  } else {
    document.querySelector("#nextBtn3").setAttribute("disabled", "true");
  }
});

const ToastErr = Swal.mixin({
  toast: true,
  position: 'top',
  showConfirmButton: false,
  timer: 7000,
  timerProgressBar: true,
  didOpen: (toast) => {
    toast.addEventListener('mouseenter', Swal.stopTimer)
    toast.addEventListener('mouseleave', Swal.resumeTimer)
  }
})

let subtmitBtn = document.querySelector("#nextBtn3");
subtmitBtn.addEventListener("click", async () => {
  let nm = document.querySelector("#name");
  let email = document.querySelector("#email");
  let year = document.querySelector("#year");
  let month = document.querySelector("#month");
  let day = document.querySelector("#day");
  let username = document.querySelector("#username");
  let password = document.querySelector("#password");
  let otp = document.querySelector("#otp");


  let submitReq = await fetch(`/user/sign-up`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      name: nm.value,
      email: email.value,
      year: year.value,
      month: month.value,
      day: day.value,
      uname: username.value,
      password: password.value,
      otp: otp.value
    })
  })

  let isError = await submitReq.json();

  if (isError.register == false) {
    ToastErr.fire({
      icon: 'error',
      title: `You entered incorrect OTP`
    })
  } else {
    ToastErr.fire({
      icon: 'success',
      title: `Signup successfully`
    })
    setTimeout(() => {
      location.href = "/user-login"
    }, 1000);
  }

})
// /user/sign-up submit form url