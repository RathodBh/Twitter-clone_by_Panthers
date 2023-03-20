
//variables
const allBtns = document.querySelectorAll(".next");
const allParts = document.querySelectorAll(".candidate > div");
const allPrevBtns = document.querySelectorAll(".prev");

//set width
const updateLength = () => {
    let allParts = document.querySelectorAll(".candidate > div");
    document.querySelector(".candidate").style.width = `${allParts.length * 100}%`;
}
updateLength();

const updateTransition = (i) => {
    let allParts = document.querySelectorAll(".candidate > div");
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
    let allParts = document.querySelectorAll(".candidate > div");

    if (i == 0) {
        prev.style.display = "none";
        next.style.width = "100%";
    }
    else if (i == allParts.length - 1 || i == allParts.length) {
        next.setAttribute("value", "SUBMIT")
        setTimeout(() => {
            // debugger
            next.setAttribute("type", "submit")
        }, 1)
    }
    else {
        prev.style.display = "block";
        prev.style.width = "100%";
        next.setAttribute("value", "NEXT")
        next.setAttribute("type", "button")
    }
    console.log(allParts.length);
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
var Days = [31,28,31,30,31,30,31,31,30,31,30,31];// index => month [0-11]
$(document).ready(function(){
   
    var option = '<option value="day" selected hidden disabled>day</option>';
    var selectedDay="day";
    for (var i=1;i <= Days[0];i++){ //add option days
        option += '<option value="'+ i + '">' + i + '</option>';
    }
    $('#day').append(option);
    $('#day').val(selectedDay);

    var option = '<option value="month"  selected hidden disabled>month</option>';
    var selectedMon ="month";
    for (var i=1;i <= 12;i++){
        option += '<option value="'+ i + '">' + i + '</option>';
    }
    $('#month').append(option);
    $('#month').val(selectedMon);

    var option = '<option value="month" selected hidden disabled>month</option>';
    var selectedMon ="month";
    for (var i=1;i <= 12;i++){
        option += '<option value="'+ i + '">' + i + '</option>';
    }
    $('#month2').append(option);
    $('#month2').val(selectedMon);
  
    var d = new Date();
    var option = '<option value="year" selected hidden disabled>year</option>';
    selectedYear ="year";
    var ThisYear = d.getFullYear()
    for (var i=ThisYear;i >=1930 ;i--){// years start i
        option += '<option value="'+ i + '">' + i + '</option>';
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

function change_year(select)

{
    select.size=0;
    if( isLeapYear( $(select).val() ) )
	  {
		    Days[1] = 29;
		    
    }
    else {
        Days[1] = 28;
    }
    if( $("#month").val() == 2)
		    {
			       var day = $('#day');
			       var val = $(day).val();
			       $(day).empty();
			       var option = '<option value="day" selected  disabled>day</option>';
			       for (var i=1;i <= Days[1];i++){ //add option days
				         option += '<option value="'+ i + '">' + i + '</option>';
             }
			       $(day).append(option);
			       if( val > Days[ month ] )
			       {
				          val = 1;
			       }
			       $(day).val(val);
		     }
  }

function change_month(select) {
    select.size=0;
    var day = $('#day');
    var val = $(day).val();
    $(day).empty();
    var option = '<option value="day" selected hidden disabled>day</option>';
    var month = parseInt( $(select).val() ) - 1;
    for (var i=1;i <= Days[ month ];i++){ //add option days
        option += '<option value="'+ i + '">' + i + '</option>';
    }
    $(day).append(option);
    if( val > Days[ month ] )
    {
        val = 1;
    }
    $(day).val(val);
}



//username Limit
const unm = document.getElementById("username");
const unmLimit = document.getElementById("usernameLimit");
const usernameError = document.getElementById("usernameError");
unm.addEventListener("input",(e)=>{
    if(e.target.value.length >= 50){
        unm.style.boxShadow = "0 0 1px 3px red";
        usernameError.innerText = "Username must be less than 50 characters";
    }else{
        unm.style.boxShadow = "none";
        usernameError.innerText = "";
    }
    e.target.value = e.target.value.substring(0,50);
    unmLimit.innerText = e.target.value.length + " / " + 50;
})



///BY Jigar

async function checkusername(e) {
    console.log(e.value);
    const save_req = await fetch(`http://localhost:3008/user/sign-up/checkusername`, {
      method: "POST",
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        data: e.value

      })
    });

    var resSave = await save_req.json();
    // console.log(resSave.isNew);
    if (resSave.isNew == true) {
      // console.log("i ma he");
      let usermsg = document.getElementById('usernameError')
      // console.log(usermsg);
      let content = `<span style="color: #1c800f; font-size:14px">Username Available</span>`
      usermsg.innerHTML = content
      return true
    }
    else {
      let usermsg = document.getElementById('usernameError')
      let content = `<span style="color: #b9370f; font-size:14px">Username unAvailable</span>`
      usermsg.innerHTML = content;
    //   submitbtn.style.display = 'none';
      return false;
    }
    
  }


  async function checkuserEmail(e) {
    let email = e.value

    const save_req = await fetch(`http://localhost:3008/user/sign-up/checkemail`, {
      method: "POST",
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        data: e.value

      })
    });

    var resSave = await save_req.json();
    // console.log(resSave.isNew);
    if (resSave.isNew == true) {
      // console.log("i ma he");
      let usermsg = document.getElementById('emailError')
      // console.log(usermsg);
      let content = `<span style="color: #1c800f;"></span>`
      usermsg.innerHTML = content
      //count += 1
      return true
    }
    else {
      let usermsg = document.getElementById('emailError')
      let content = `<span style="color: #b9370f;">User Already Exists!</span>`
      usermsg.innerHTML = content;
      //count -= 1
    //   submitbtn.style.display = 'none';
      return false
    }
  }

  async function checkemailforlogin(e) {
    let email = e.value

    const save_req = await fetch(`http://localhost:3008/user-login/checkemail`, {
      method: "POST",
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        data: e.value

      })
    });

    var resSave = await save_req.json();
    // console.log(resSave.isNew);
    if (resSave.isNew == true) {
      // console.log("i ma he");
      let usermsg = document.getElementById('emailError')
      // console.log(usermsg);
      let content = `<span style="color: #1c800f;"></span>`
      usermsg.innerHTML = content
      //count += 1
      return true
    }
    else {
      let usermsg = document.getElementById('emailError')
      let content = `<span style="color: #b9370f;">User Already Exists!</span>`
      usermsg.innerHTML = content;
      //count -= 1
    //   submitbtn.style.display = 'none';
      return false
    }
  }