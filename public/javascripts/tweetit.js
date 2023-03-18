// <!-- import jquery -->

window.onload = () => {
    $('#myModal').modal('show');
}

function twt_clk() {
    var twt_value = document.getElementById("twt-area").value;
    alert("done" + twt_value);

    // fetch api
    function fetch_data() {
        try {
            fetch('http://localhost:3008/tweet/getapi?twt_value=' + twt_value + '').then(function (response) {
                return response.json()
            })
                .then(function (responseData) {
                    // console.log(responseData[0].us_email == us_email_l1.value);

                    console.log("Done");
                })
        } catch (error) {
            console.log(error);
        }
    }
    fetch_data();

}
function twt_clk1(){
    window.location="http://localhost:3008/dashboard/tweet";
}
function btn_close(){
    window.location="http://localhost:3008/dashboard";

}






// $("#modalTrigger").click(function (event) {
//     event.preventDefault();
//     $.ajax({
//         type: "GET",
//         url: "http://localhost:3008/dashboard/tweet" // Modify the url according to your application logic
//     }).done(function (yourData) {
//         // Now open the modal! (Assuming you are using bootstrap.js)
//         $("#myModal").modal("show");
//         // If you used 'res.json' then you can use yourData here
//         $("#paragraphInModal").html(yourData);
//     });
// })