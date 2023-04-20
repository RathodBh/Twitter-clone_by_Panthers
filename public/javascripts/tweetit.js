
// window.onload = () => {
//     $('#myModal').modal('show');
// }
var ff = 0;

function emoji_clk() {
    console.log('txt',document.getElementById('myTextArea').innerHTML)
    console.log('txtBox',document.getElementById('twt-area').innerHTML)
    if (ff == 0) {
        document.getElementById('emojis_img').style.display = "block";
        document.querySelector('emoji-picker')
            .addEventListener('emoji-click', event => {
                document.getElementById('myTextArea').innerHTML += event.detail.unicode
                document.getElementById('twt-area').value += event.detail.unicode
            });
        ff = 1;
    }
    else {
        document.getElementById('emojis_img').style.display = "none";
        document.querySelector('emoji-picker')
            .addEventListener('emoji-click', event =>{
                document.getElementById('myTextArea').innerHTML += event.detail.unicode
                document.getElementById('twt-area').value += event.detail.unicode
            } );
        ff = 0;
    }
    // document.getElementById('emojiSelectorIcon').style.display="none"
}
// document.querySelector("#sub_btn").disabled = 'false'

var limit_img = 0;

    const previewImage = (event) => {
    const imageFiles = event.target.files;
    limit_img+=imageFiles.length;
    document.querySelector("#sub_btn").disabled = "false"

    //limit upload files
    if(limit_img > 5){
        document.querySelector("#errLimit").innerHTML = `<div class="alert alert-danger alert-dismissible fade show my-1" role="alert">
        <strong>Error!</strong> You can't upload more than five files at a time <a href="#" onclick="location.reload()">try again</a>
        
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>`;
        document.querySelector("#sub_btn").disabled = "true"
    }else{
        document.querySelector("#errLimit").innerHTML = ``;
        document.querySelector("#sub_btn").disabled = false
    }
    for (var i = 0; i < imageFiles.length; i++) {
        if (imageFiles[i].type == "video/mp4") {
            const reader = new FileReader();
            reader.readAsDataURL(imageFiles[i]);
            reader.addEventListener('load', () => {
                // Create new <img> element and add it to the DOM
                document.getElementById("iimg").innerHTML += `<div class="image_box"><video width="320" height="240" src="${reader.result}" controls>
        Your browser does not support the video tag.
        </video>
        </div>`;
            });
        }
        else {
            if (imageFiles.length > 0) {
                /**
                * Get the image path.
                */
                var imageSrc;
                const reader = new FileReader();
                reader.readAsDataURL(imageFiles[i]);
                reader.addEventListener('load', () => {
                    // Create new <img> element and add it to the DOM
                    document.getElementById("iimg").innerHTML += `<div class="image_box"><img src='${reader.result}'></div>`;
                });

            }
        }
    }
}




function twt_clk() {
    var twt_value = document.getElementById("twt-area").value;

    // fetch api
    function fetch_data() {
        try {
            fetch('/tweet/getapi?twt_value=' + twt_value + '').then(function (response) {
                return response.json()
            })
                .then(function (responseData) {
                })
        } catch (error) {
            // console.log("TweetIT",error);
        }
    }
    fetch_data();

}
function twt_clk1() {
    window.location = "/dashboard/tweet";
}


let gg=0;

function emoji_picker1() {
    if (gg == 0) {
        document.getElementById('comment_add').style.display = "block";
        document.querySelector('#comment_add')
            .addEventListener('emoji-click', event => document.getElementById('comment_area').value += event.detail.unicode);
        gg = 1;
    }
    else {
        document.getElementById('comment_add').style.display = "none";
        document.querySelector('#comment_add')
            .addEventListener('emoji-click', event => document.getElementById('comment_area').value += event.detail.unicode);
        gg = 0;
    }
    // document.getElementById('emojiSelectorIcon').style.display="none"
}
