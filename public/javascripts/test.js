function twt_clk(){
    var twt_value=document.getElementById("twt-area").value;
    alert("done"+twt_value);
    
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