window.addEventListener("load", function () {
    const loader = document.querySelector(".loader");
    loader.className += " hidden"; // class "loader hidden"
    allClicks()
    //trending search results
    try {
        // document.querySelector("#searchTweetHash")

        if (sel != "") {
            document.querySelector("#searchTweetHash").value = "#" + sel
            document.querySelector("title").innerText = "Trending | #" + sel
            searchSuggestionsTrend()
        } else if (sel == "") {
            document.querySelector("#searchTweetHash").value = "#"
            document.querySelector("title").innerText = "Trending" + sel
            searchSuggestionsTrend()
        }

    } catch (e) {
    }
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

let is_clickable = true;

async function likepost(e, t_id) {

    e.stopPropagation()

    let tweet_id = t_id.id

    if (t_id.classList.contains('fa-regular') && is_clickable == true) {
        t_id.classList.value = 'fa-solid fa-heart text-danger';
        let like = true
        if (t_id.classList.contains("fa-solid")) {
            is_clickable = false;
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

            if (resSave) {
                is_clickable = true;
            }
            if (resSave.flag == true) {
                let likeSpan = document.querySelector("#like" + tweet_id)
                likeSpan.innerHTML = resSave.alllikecount;
            }
        }

    }
    else if (t_id.classList.value == 'fa-solid fa-heart text-danger' && is_clickable == true) {
        t_id.classList.value = 'fa-regular fa-heart'
        let like = false;
        if (t_id.classList.contains("fa-regular")) {
            is_clickable = false;
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
            if (resSave) {
                is_clickable = true;
            }
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
function openInfo (id) {
    window.location.href = `/tweet/tweet_details/${id}`;
}
try {
    if (sel != "") {
        forYouDataLoad("", "#" + sel)
    }
} catch (e) {
    forYouDataLoad()
}

async function forYouDataLoad(srch = "", hash = "") {
    let fetchDashboard;
    if (srch != "") {
        fetchDashboard = await fetch(`/dashboard/dashboardData?srch=${srch}`);
    } else if (hash != "") {
        fetchDashboard = await fetch(`/dashboard/dashboardData?hash=${hash}`);
    } else {
        fetchDashboard = await fetch(`/dashboard/dashboardData`);
    }

    let ansData = await fetchDashboard.json();

    let { tweet_data, following_data, post_date, all_comments, all_likes, arrtruefalse, arrlikeid, arrretweetid, userID } = ansData;


    let part1 = document.querySelector("#forYouPart");
    let part1Data = '';

    tweet_data.forEach((t, index) => {

        let hashTag = t.tweet.split(" ")
        let mediaUrl = t.media?.split(";")
        // console.log(mediaUrl);

        let mediaTypes = []
        let mediaUrls = []
        mediaUrl?.forEach(url => {
            let [ele1, ele2] = url.split(",");
            mediaUrls.push(ele1)
            mediaTypes.push(ele2)
        })


        // let mediaType = t.media?.split(",")[1]
        let tweetTemp = t.tweet
        for (let curHashtag of hashTag) {
            if (curHashtag.startsWith("#") && !curHashtag.substring(1).includes("#"))
                tweetTemp = tweetTemp.replace(curHashtag, `<a href="/trend?srchval=${curHashtag.substring(1)}" class="text-blue fw-400">${curHashtag}</a>`)
        }
        part1Data +=
            `
        <div onclick="openInfo(${t.id})"
                                class="tweet w-100 p-3 row pt-4 border-bottom border-top cp">
                                <div class="col-1 p-0">
                                    <img src="${t.user_image}" alt="" class="profile-size me-2 border">
                                </div>
                                <div class="col-10 px-4 pe-1" >
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
                                            ${tweetTemp} 
                                        </p>

                                    </div>
                                    ` ;

        part1Data += `<div class="tweet-img-container  d-flex flex-wrap ${(mediaTypes?.length == 0) ? "d-none" : ""} ">`
        mediaUrls?.forEach((cur, i) => {
            if (mediaTypes[i].includes("image")) {
                if (i % 2 == 0 && mediaTypes.length == i + 1) {
                    part1Data += `<a class="  bg-light w-100" onclick='openImg(event,"${cur.split("/")[3]}")'><img src="${cur}" alt="" class="border"></a>`;
                } else {
                    part1Data += `<a class="  bg-light w-50"  onclick='openImg(event,"${cur.split("/")[3]}")'><img src="${cur}" alt="" class="border}"></a>`;
                }

            } else if (mediaTypes[i].includes("video")) {
                if (i % 2 == 0 && mediaTypes.length == i + 1) {
                    part1Data += `<div class="  w-100"> <video controls loop onclick="stopProp(event)" class="w-100 h-100">
                    <source src="${cur}" type="video/mp4">
                </video></div>`;
                } else {
                    part1Data += `<div class="  w-50"> <video controls loop onclick="stopProp(event)" class="w-100 h-100">
                    <source src="${cur}" type="video/mp4">
                </video></div>`;
                }

            }
        })
        part1Data += `</div>`


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
        mediaUrls = mediaTypes = []


    })
    part1.innerHTML = part1Data;
    document.querySelector("#followingShowData").innerHTML = ""

    var userLike = [];
    for (let i = 0; i < arrlikeid.length; i++) {
        userLike.push(arrlikeid[i]);
    }

    userLike.forEach(element => {
        try {
            document.getElementById(element).classList = "fa-solid fa-heart text-danger";
        } catch (e) {
            // console.log("🚀 ~ file: dashboard.js:321     ~ forYouDataLoad ~ e:", e)  
        }
    });




    // load()
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
    allClicks()
}




async function followingTab() {
    let fetchDashboard = await fetch(`/dashboard/dashboardData`);
    let ansData = await fetchDashboard.json();

    let { tweet_data, following_data, post_date, all_comments, all_likes, arrtruefalse, arrlikeid, arrretweetid, userID } = ansData;

    let part2 = document.querySelector("#followingShowData");
    let part2Data = '';
    tweet_data.forEach((t, index) => {
        if (following_data.includes(t.user_id)) {

            let hashTag = t.tweet.split(" ")
            let tweetTemp = t.tweet
            for (let curHashtag of hashTag) {
                if (curHashtag.startsWith("#") && !curHashtag.substring(1).includes("#"))
                    tweetTemp = tweetTemp.replace(curHashtag, `<a href="/trend?srchval=${curHashtag.substring(1)}" class="text-blue fw-400">${curHashtag}</a>`)
            }

            let mediaUrl = t.media?.split(";")

            let mediaTypes = []
            let mediaUrls = []
            mediaUrl?.forEach(url => {
                let [ele1, ele2] = url.split(",");
                mediaUrls.push(ele1)
                mediaTypes.push(ele2)
            })

            part2Data +=
                `
                <div onclick="openInfo(${t.id})"
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
                                            ${tweetTemp} 
                                        </p>

                                    </div>
                                    ` ;
                                    part2Data += `<div class="tweet-img-container  d-flex flex-wrap ${(mediaTypes?.length == 0) ? "d-none" : ""} ">`
                                    mediaUrls?.forEach((cur, i) => {
                                        if (mediaTypes[i].includes("image")) {
                                            if (i % 2 == 0 && mediaTypes.length == i + 1) {
                                                part2Data += `<a class="  bg-light w-100"  onclick='openImg(event,"${cur.split("/")[3]}")'><img src="${cur}" alt="" class="border"></a>`;
                                            } else {
                                                part2Data += `<a class="  bg-light w-50"  onclick='openImg(event,"${cur.split("/")[3]}")'><img src="${cur}" alt="" class="border}"></a>`;
                                            }
                            
                                        } else if (mediaTypes[i].includes("video")) {
                                            if (i % 2 == 0 && mediaTypes.length == i + 1) {
                                                part2Data += `<div class="  w-100"> <video controls loop onclick="stopProp(event)" class="w-100 h-100">
                                                <source src="${cur}" type="video/mp4">
                                            </video></div>`;
                                            } else {
                                                part2Data += `<div class="  w-50"> <video controls loop onclick="stopProp(event)" class="w-100 h-100">
                                                <source src="${cur}" type="video/mp4">
                                            </video></div>`;
                                            }
                            
                                        }
                                    })
                                    part2Data += `</div>`

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
        mediaUrls = mediaTypes = []

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

    allClicks()
}

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

    // load()
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

// search tweet has or anything TRENDING.EJS
let trendingSearch1 = document.querySelector("#searchTweetHash")
trendingSearch1.addEventListener('click', clearRes)
trendingSearch1.addEventListener('blur', clearRes)
function clearRes() {
    if (trendingSearch1.value == "" || trendingSearch1.value == "#") {
        searchSuggestions.classList.remove("d-none")
    }
}

let searchSuggestions = document.querySelector("#searchSuggestion");
async function searchSuggestionsTrend(e) {

    let trendingSearch = document.querySelector("#searchTweetHash")
    if (trendingSearch.value == "") {
        forYouDataLoad();
    }
    else {

        if (trendingSearch.value.startsWith("#")) {
            //search suggestion
            let data = await fetch(`/dashboard/getTrending?search=${trendingSearch.value.substring(1)}`);
            let searchRes = await data.json();
            let allData = searchRes.searchHashtag;

            if (trendingSearch.value == "#") {
                searchSuggestions.classList.add("d-none")
            } else {
                searchSuggestions.classList.remove("d-none")
            }
            searchSuggestions.innerHTML = ""
            if (allData != undefined) {
                if (allData.length > 0) {
                    for (const x of allData) {
                        searchSuggestions.innerHTML += `
                <a onclick="sendData('${x.hashtag}')" class="my-4 d-flex align-items-center w-100 text-blue" id="" >
                    
                    <div class="col-2 all-center">
                        <i class="fa-solid fa-magnifying-glass fa-2x"></i>
                   </div>
                    <div class="info col-8 d-flex align-items-center " > 
                        <span class="fs-18">${x.hashtag}</span>
                    </div>
        </a>
                `
                    }
                } else {
                    searchSuggestions.classList.add("d-none")
                }
            }

            //search API for tweet Data
            forYouDataLoad("", trendingSearch.value.substring(1))

        } else {

            //search for user data
            let val = trendingSearch.value;
            let user_details = ``;
            if (val) {
                searchSuggestions.classList.remove("d-none");
                let data1 = await fetch(`/srch?val=${val}`)
                let data = await data1.json();
                for (let i = 0; i < data.length; i++) {
                    user_details += `
    <div class="my-4 d-flex justify-content-between align-items-center w-100" id="${data[i].id}" onclick="getTargetProfile(this)" style="cursor: pointer;">
        <div class="d-flex">
            <img src="${data[i].user_image}" alt="" class="profile-size me-2 border">
            <div class="info" > 
                <h6>${data[i].name}</h6>
                <span class="text-gray">@${data[i].user_name}</span>
            </div>
        </div>
</div>
`
                }
                if (data.length == 0) {
                    searchSuggestions.classList.add("d-none");
                }
            }
            else {
                searchSuggestions.classList.add("d-none");
            }

            searchSuggestions.innerHTML = user_details;

            forYouDataLoad(trendingSearch.value)
        }
    }
    if (e == undefined) {
        searchSuggestions.classList.add("d-none")
    }
}
function hideSuggestion(sec = 500) {
    setTimeout(() => {
        searchSuggestions.classList.add("d-none")
    }, sec)
}
function sendData(hashtag) {
    document.getElementById("searchTweetHash").value = "#" + hashtag;
    searchSuggestions.classList.add("d-none")
    searchSuggestionsTrend()
}

function openImg(e,imgName) {
    e.stopPropagation();
    location.href = `/dashboard/img/${imgName}`;
}