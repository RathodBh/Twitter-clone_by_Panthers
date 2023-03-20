
window.onload = () => {
    $('#myModal').modal('show');
}
var ff=0;

function emoji_clk(){
if(ff==0){
    document.getElementById('emojis_img').style.display="block";
    document.querySelector('emoji-picker')
    .addEventListener('emoji-click', event =>document.getElementById('twt-area').value += event.detail.unicode);
ff=1;
}
else{
    document.getElementById('emojis_img').style.display="none";
    document.querySelector('emoji-picker')
    .addEventListener('emoji-click', event =>document.getElementById('twt-area').value += event.detail.unicode);
ff=0;
}
// document.getElementById('emojiSelectorIcon').style.display="none"
}

function sub_btn(){
    
}
const previewImage = (event) => {
    // const img=document.getElementById('images');
    /**
         * Get the selected files.
         */
    const imageFiles = event.target.files;
    /**
         * Count the number of files selected.
         */
    const imageFilesLength = imageFiles.length;
    /**
     * If at least one image is selected, then proceed to display the preview.
     */
    if (imageFilesLength > 0) {
        /**
         * Get the image path.
         */
        var imageSrc;
        for (const imageFile of imageFiles) {
            // imageSrc = URL.createObjectURL(imageFiles);
            const reader = new FileReader();
            reader.readAsDataURL(imageFile);


            reader.addEventListener('load', () => {
                // Create new <img> element and add it to the DOM
                document.getElementById("iimg").innerHTML += `<div class="image_box"><img src='${reader.result}'></div>`;
            });

            /**
             * Select the image preview element.
             */

            //   const imagePreviewElement = document.querySelector("#preview-selected-image");
            // // const imagePreviewElement1 = document.querySelector("#preview-selected-image1");
            // /**
            //  * Assign the path to the image preview element.
            //  */
            // // imagePreviewElement1.src = imageSrc;
            // imagePreviewElement.src = imageSrc;
            // /**
            //  * Show the element by changing the display value to "block".
            //  */
            // imagePreviewElement.style.display = "block";
            // // imagePreviewElement1.style.display = "block";


        }

    }
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
function twt_clk1() {
    window.location = "http://localhost:3008/dashboard/tweet";
}
function btn_close() {
    window.location = "http://localhost:3008/dashboard";

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