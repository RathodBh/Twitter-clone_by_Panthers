window.addEventListener("load", function () {
    const loader = document.querySelector(".loader");
    loader.className += " hidden"; // class "loader hidden"
    allClicks()

});

function allClicks() {
    let allClicks = document.querySelectorAll(".clickComment")
    allClicks.forEach((cur) => {
        // let linkModal = document.querySelector("#clickComment");
        cur.addEventListener("click", (e) => {
            e.stopPropagation()
            let id = e.currentTarget.getAttribute("data-id");
            document.querySelector(".modal-body #tweetId").value = id;
            document.querySelector("#comment_area").value = "";
        })
    })
}

async function likepost(e, t_id) {

    e.stopPropagation()

    let tweet_id = t_id.id

    if (t_id.classList.contains('fa-regular')) {
        t_id.classList.value = 'fa-solid fa-heart text-danger';
        let like = true
        if (t_id.classList.contains("fa-solid")) {
            const save_req = await fetch(`/dashboard/like`, {
                method: "POST",
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    data: { like, tweet_id }
                })
            });
            var resSave = await save_req.json();

            if (resSave.flag == true) {
                let likeSpan = document.querySelector("#like" + tweet_id)
                likeSpan.innerHTML = resSave.alllikecount;
            }
        }

    }
    else if (t_id.classList.value == 'fa-solid fa-heart text-danger') {
        t_id.classList.value = 'fa-regular fa-heart'
        let like = false;
        if (t_id.classList.contains("fa-regular")) {
            const save_req = await fetch(`/dashboard/like`, {
                method: "POST",
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    data: { like, tweet_id }
                })
            });
            var resSave = await save_req.json();
            if (resSave.flag == false) {
                let likeSpan = document.querySelector("#like" + tweet_id)
                likeSpan.innerHTML = resSave.alllikecount
            }
            if (resSave.flag == true) {
                let likeSpan = document.querySelector("#like" + tweet_id)
                likeSpan.innerHTML = resSave.alllikecount
            }
        }
    }
}

//copy to clipboard

async function copyContent(e, text) {
    //

    let link = location.href.split('/')[0] + "//" + location.href.split('/')[2];
    let myData = `/tweet/tweet_details/${text}`

    e.stopPropagation();
    const ToastCopy = Swal.mixin({
        toast: true,
        position: 'top',
        showConfirmButton: false,
        timer: 2000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    })
    try {
        await navigator.clipboard.writeText(link + myData);
        ToastCopy.fire({
            icon: 'success',
            title: 'Link copied successfully',

        })
    } catch (err) {
        console.error('Failed to copy: ', err);
    }
}
const test = (id) => {
    window.location.href = (`/tweet/tweet_details/${id}`)
}

async function forYouDataLoad() {
    let fetchDashboard = await fetch(`/dashboard/dashboardData`);
    let ansData = await fetchDashboard.json();

    let { tweet_data, following_data, post_date, all_comments, all_likes, arrtruefalse, arrlikeid, arrretweetid, userID } = ansData;


    let part1 = document.querySelector("#forYouPart");
    let part1Data = '';

    tweet_data.forEach((t, index) => {
        part1Data +=
            `
        <div onclick="test(${t.id})"
                                class="tweet w-100 p-3 row pt-4 border-bottom border-top cp">
                                <div class="col-1 p-0">
                                    <img src="${t.user_image}" alt="" class="profile-size me-2 border">
                                </div>
                                <div class="col-10 px-4 " >
                                    <div class="d-flex align-items-center user-info position-relative flex-wrap">
                                        
                                        <a href="/profile/user/${t.user_id}"
                                            class="text-black fs-16 me-1 fw-600 ">
                                            ${t.name} 
                                        </a>
                                        <span class="fs-16 text-gray me-1 "  >
                                            @${t.user_name} 
                                        </span>
                                        <i class="fa-solid fa-circle bottom-dots fs-16 text-gray me-1"></i>
                                        <span class="date fs-16 me-1 text-gray">
                                            ${post_date[index]} 
                                        </span>
                                        
                                </div>
                                    
                                    <div class="tweet-content">

                                        <p class="text-black fs-16 fw-300 word-wrap">
                                            ${t.tweet} 
                                        </p>

                                    </div>
                                    ` ;

        if (t.media_type.includes("image")) {

            part1Data += `<div class="tweet-img-container">
                                            <img src="${t.media_url}" alt="" class="w-100">
                                        </div>`;
        } else if (t.media_type.includes("video")) {
            part1Data += `<div class="tweet-video-container">
                                                <video controls loop onclick="stopProp(event)">
                                                    <source src="${t.media_url}" type="video/mp4">
                                                </video>
                                            </div>`;
        } else {

        }

        part1Data += `<div class="tweet-reactions-container mt-3">
                                                    <ul class="list-unstyled row">
                                                        <li class="col">
                                                            <a href="" data-bs-toggle="modal"
                                                                class="comment clickComment p-2 all-center"
                                                                data-bs-target="#commentModal"
                                                                data-id="${t.id}" id="clickComment" onclick="stopProp(event)">
                                                                <i class="fa-regular fa-comment"></i>
                                                                <span id="allComment${t.id}">
                                                                    ${all_comments[index]} 
                                                                </span>

                                                            </a>
                                                        </li>
                                                        <li class="col">
                                                            <a class="retweet p-2 all-center" >
                                                                <i class="fa-solid fa-retweet"
                                                                    onclick="retweetpost(event,this)"
                                                                    id="k${t.id}"></i>
                                                                <span id="retweet${t.id}">
                                                                    ${t.tweet_retweets} 
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li class="col">
                                                            <a class="like p-2 all-center">
                                                                <i class="fa-regular fa-heart"
                                                                    onclick="likepost(event,this)"
                                                                    id="${t.id}"></i>
                                                                <span id="like${t.id}">
                                                                    ${t.tweet_likes} 
                                                                </span>

                                                            </a>
                                                        </li>
                                                        <li class="col">
                                                            <a href="" class="share p-2 all-center" data-bs-toggle="dropdown"
                                                                aria-expanded="false" onclick="stopProp(event)">
                                                                <i
                                                                    class="fa-solid fa-arrow-up-from-bracket"></i>

                                                            </a>
                                                            <ul class="dropdown-menu p-0">
                                                                <li class="d-flex">
                                                                    <a class="dropdown-item text-dark"
                                                                        onclick="copyContent(event,'${t.id}')">
                                                                        <i
                                                                            class="fa-regular fa-clipboard me-2"></i>

                                                                        Click to copy link

                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </div>
                                </div>
                                <div class="col-1 dropstart">
                                    <a href="" class="text-dark" data-bs-toggle="dropdown"
                                        aria-expanded="false" onclick="stopProp(event)">
                                        •••
                                    </a>
                                    <ul class="dropdown-menu">
                                        ${userID != t.user_id ?

                following_data.includes(t.user_id) ? `<li class="d-flex">
                <a class="dropdown-item" onclick="followProp(event,'${t.user_id}','1')" id="p${t.user_id}"><i
                    class="fa-solid fa-user-minus me-2" ></i><span id="prop${t.user_id}"> Unfollow</span> <span
                        class="text-blue">@${t.user_name}</span>

                </a>
            </li>` : `<li class="d-flex">
                <a class="dropdown-item" onclick="followProp(event,'${t.user_id}','0')" id="p${t.user_id}"><i
                    class="fa-solid fa-user-plus me-2" ></i>
                    <span id="prop${t.user_id}"> Follow</span><span class="text-blue">@${t.user_name}</span>
                </a>
            </li>`
                : ""}
                                        

                                        <li class="d-flex">
                                            <a class="dropdown-item" href="/profile/user/${t.user_id}"><i
                                                    class="fa-regular fa-eye me-2"></i>
                                                Visit profile <span class="text-blue">@${t.user_name} 
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
        `;


    })
    part1.innerHTML = part1Data;
    document.querySelector("#followingShowData").innerHTML = ""

    var userLike = [];
    for (let i = 0; i < arrlikeid.length; i++) {
        userLike.push(arrlikeid[i]);
    }
    userLike.forEach(element => {
        document.getElementById(element).classList = "fa-solid fa-heart text-danger";
    });


    load()
    allClicks()
}

forYouDataLoad()



async function followingTab() {
    let fetchDashboard = await fetch(`/dashboard/dashboardData`);
    let ansData = await fetchDashboard.json();

    let { tweet_data, following_data, post_date, all_comments, all_likes, arrtruefalse, arrlikeid, arrretweetid, userID } = ansData;

    let part2 = document.querySelector("#followingShowData");
    let part2Data = '';
    tweet_data.forEach((t, index) => {
        if (following_data.includes(t.user_id)) {
            part2Data +=
                `
                <div onclick="test(${t.id})"
                                class="tweet w-100 p-3 row pt-4 border-bottom border-top cp">
                                <div class="col-1 p-0">
                                    <img src="${t.user_image}" alt="" class="profile-size me-2 border" >
                                </div>
                                <div class="col-10 px-4 " >
                                    <div class="d-flex align-items-center user-info position-relative flex-wrap">
                                        
                                        <a href="/profile/user/${t.user_id}"
                                            class="text-black fs-16 me-1 fw-600" >
                                            ${t.name} 
                                        </a>
                                        <span class="fs-16 text-gray me-1" >
                                            @${t.user_name} 
                                        </span>
                                        <i class="fa-solid fa-circle bottom-dots fs-16 text-gray me-1"></i>
                                        <span class="date fs-16 me-1 text-gray">
                                            ${post_date[index]} 
                                        </span>
                                    
                                    </div>
                                    
                                    <div class="tweet-content">

                                        <p class="text-black fs-16 fw-300 word-wrap">
                                            ${t.tweet} 
                                        </p>

                                    </div>
                                    ` ;

            if (t.media_type.includes("image")) {

                part2Data += `<div class="tweet-img-container">
                                            <img src="${t.media_url}" alt="" class="w-100">
                                        </div>`;
            } else if (t.media_type.includes("video")) {
                part2Data += `<div class="tweet-video-container">
                                                <video controls loop onclick="stopProp(event)">
                                                    <source src="${t.media_url}" type="video/mp4">
                                                </video>
                                            </div>`;
            } else {

            }

            part2Data += `<div class="tweet-reactions-container mt-3">
                                                    <ul class="list-unstyled row">
                                                        <li class="col">
                                                            <a href="" data-bs-toggle="modal"
                                                                class="comment clickComment all-center"
                                                                data-bs-target="#commentModal"
                                                                data-id="${t.id}" id="clickComment" onclick="(e)=>{e.stopPrapogation()}">
                                                                <i class="fa-regular fa-comment"></i>
                                                                <span id="allComment${t.id}">
                                                                    ${all_comments[index]} 
                                                                </span>

                                                            </a>
                                                        </li>
                                                        <li class="col">
                                                            <a class="retweet all-center">
                                                                <i class="fa-solid fa-retweet"
                                                                    onclick="retweetpost(event,this)"
                                                                    id="k${t.id}"></i>
                                                                <span id="retweet${t.id}">
                                                                    ${t.tweet_retweets} 
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li class="col">
                                                            <a class="like all-center">
                                                                <i class="fa-regular fa-heart"
                                                                    onclick="likepost(event,this)"
                                                                    id="${t.id}"></i>
                                                                <span id="like${t.id}">
                                                                    ${t.tweet_likes} 
                                                                </span>

                                                            </a>
                                                        </li>
                                                        <li class="col">
                                                            <a href="" class="share p-2 all-center" data-bs-toggle="dropdown"
                                                                aria-expanded="false" onclick="stopProp(event)">
                                                                <i
                                                                    class="fa-solid fa-arrow-up-from-bracket"></i>

                                                            </a>
                                                            <ul class="dropdown-menu p-0">
                                                                <li class="d-flex">
                                                                    <a class="dropdown-item text-dark"
                                                                        onclick="copyContent(event,'${t.id}')">
                                                                        <i
                                                                            class="fa-regular fa-clipboard me-2"></i>

                                                                        Click to copy link

                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </div>
                                </div>
                                <div class="col-1 dropstart">
                                    <a href="" class="text-dark" data-bs-toggle="dropdown"
                                        aria-expanded="false" onclick="stopProp(event)">
                                        •••
                                    </a>
                                    <ul class="dropdown-menu">
                                        ${userID != t.user_id ?

                    following_data.includes(t.user_id) ? `<li class="d-flex">
<a class="dropdown-item" onclick="followProp(event,'${t.user_id}','1')" id="p${t.user_id}"><i
class="fa-solid fa-user-minus me-2" ></i><span id="prop${t.user_id}"> Unfollow</span> <span
class="text-blue">@${t.user_name}</span>

</a>
</li>` : `<li class="d-flex">
<a class="dropdown-item" onclick="followProp(event,'${t.user_id}','0')" id="p${t.user_id}"><i
class="fa-solid fa-user-plus me-2" ></i>
<span id="prop${t.user_id}"> Follow</span><span class="text-blue">@${t.user_name}</span>
</a>
</li>`
                    : ""}
                                        

                                        <li class="d-flex">
                                            <a class="dropdown-item" href="/profile/user/${t.user_id}"><i
                                                    class="fa-regular fa-eye me-2"></i>
                                                Visit profile <span class="text-blue">@${t.user_name} 
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
        `;
        }

    })
    part2.innerHTML = part2Data;
    document.querySelector("#forYouPart").innerHTML = ""


    var userLike = [];
    for (let i = 0; i < arrlikeid.length; i++) {
        userLike.push(arrlikeid[i]);
    }
    userLike.forEach(element => {
        try {
            document.getElementById(element).classList = "fa-solid fa-heart text-danger";
        } catch (e) {
            //console.log("Error: " + e)
        }
    });




    load()
    allClicks()
}
async function load() {
    let fetchDashboard = await fetch(`/dashboard/dashboardData`);
    let ansData = await fetchDashboard.json();

    let { tweet_data, following_data, post_date, all_comments, all_likes, arrtruefalse, arrlikeid, arrretweetid } = ansData;


    var userretweet = [];
    for (let i = 0; i < arrretweetid.length; i++) {
        userretweet.push(arrretweetid[i]);
    }
    userretweet.forEach(element => {
        try {
            document.getElementById("k" + element).classList = "fa-solid fa-retweet text-success";
        } catch (e) {
            //console.log("Error: " + e)
        }
    });

}
load()
async function retweetpost(e, t_id) {
    e.stopPropagation();

    let temp = t_id.id
    let id = temp.slice(1);
    let tweet_id = parseInt(id)

    if (t_id.classList.value == 'fa-solid fa-retweet') {
        t_id.classList.value = 'fa-solid fa-retweet text-success';
        let retweet = true
        const save_req = await fetch(`/dashboard/retweet`, {
            method: "POST",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                data: { retweet, tweet_id }
            })
        });
        var resSave = await save_req.json();

        if (resSave.flag == true) {
            try {
                let retweetSpan = document.querySelector("#retweet" + tweet_id)
                retweetSpan.innerHTML = resSave.allretweetcount
            } catch (e) {
                //console.log("Error: " + e)
            }

        }
    }
    else if (t_id.classList.value == 'fa-solid fa-retweet text-success') {
        t_id.classList.value = 'fa-solid fa-retweet'
        let retweet = false;
        const save_req = await fetch(`/dashboard/retweet`, {
            method: "POST",
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                data: { retweet, tweet_id }
            })
        });
        var resSave = await save_req.json();
        if (resSave.flag == false) {

            let retweetSpan = document.querySelector("#retweet" + tweet_id)
            retweetSpan.innerHTML = resSave.allretweetcount


        }
        if (resSave.flag == true) {
            let retweetSpan = document.querySelector("#retweet" + tweet_id)
            retweetSpan.innerHTML = resSave.allretweetcount
        }
    }

    load()
}

// document.querySelector("#comment_area").addEventListener("input",(e)=>{

// })

let form = document.querySelector('#addCommentForm')
form.addEventListener('submit', async (e) => {
    e.preventDefault()
    if (document.querySelector("#comment_area").value == "") {
        ToastBlank.fire({
            icon: 'warning',
            title: 'Please enter a comment',

        })
    } else {
        let data = await fetch(`/tweet/tweet_comment`, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                tweetId: document.querySelector("#tweetId").value,
                comment_text: document.querySelector("#comment_area").value
            })
        })
        let ans = await data.json();
        allCommentsLen = ans.len;
        var comment_section = document.querySelector("#allComment" + document.querySelector("#tweetId").value);
        comment_section.innerHTML = allCommentsLen
    }

    // loadComments()
})

function stopProp(e) {
    e.stopPropagation();
}


async function followProp(e, follower_id, flag) {
    e.stopPropagation()
    if (flag == 0) {
        await fetch(`/addfollow?followerId=${follower_id}&flag=${flag}`);
        document.getElementById(`prop${follower_id}`).innerHTML = "Unfollow";
        document.getElementById(`p${follower_id}`).setAttribute("onclick", `followProp(event,${follower_id},1)`);
        // await getFollowUser()
    } else {
        Swal.fire({
            title: 'Do you want to Unfollow?',
            text: "",
            position: "center",
            icon: 'question',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, Unfollow!'
        }).then(async (result) => {
            if (result.isConfirmed) {
                const Toast = Swal.mixin({
                    toast: true,
                    position: 'top',
                    showConfirmButton: false,
                    timer: 2000,
                    timerProgressBar: true,
                    didOpen: (toast) => {
                        toast.addEventListener('mouseenter', Swal.stopTimer)
                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                    }
                })

                Toast.fire({
                    icon: 'success',
                    title: 'Unfollow successfully',

                })

                await fetch(`/addfollow?followerId=${follower_id}&flag=${flag}`);
                document.getElementById(`prop${follower_id}`).innerHTML = "Follow";
                document.getElementById(`p${follower_id}`).setAttribute("onclick", `followProp(event,${follower_id},0)`);

                await getFollowUser()
            }
        })
    }
    await getFollowUser()

}