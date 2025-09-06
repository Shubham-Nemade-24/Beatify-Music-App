<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="fav.css">
    <title>BEATIFY</title>
</head>

<body>
<header>
    <div class="menu_side">
        <h1 class="active"><span></span><i class="bi bi-list"></i>MENU</h1>
        <div class="playlist">
      <a href="Review.jsp"><h4 class="active"><span></span><i class="bi bi-card-text"></i> Review</h4></a>
     	<a href="fav.jsp"><h4 class="active"><span></span><i class="bi bi-heart-fill"></i> Favourites</h4></a>
     	 <a href="share.jsp"><h4 class="active" ><span></span><i class="bi bi-share"></i>Share Invite</h4></a>
        <a href="Delete.jsp"><h4 class="active" ><span></span><i class="bi bi-trash"></i>Delete my account</h4></a>
        <h4 class="active" ><span></span><i class="bi bi-music-note-beamed"></i>Recommended songs</h4>
        
           <!-- <h4 class="active"><span></span><i class="bi bi-music-note-beamed"></i> Playlist</h4>
              <h4 ><span></span><i class="bi bi-music-note-beamed"></i> Favourites</h4>
                <h4 ><span></span><i class="bi bi-music-note-beamed"></i> Upload</h4>
            <h4 ><span></span><i class="bi bi-music-note-beamed"></i>Popular songs</h4>
              <h4 ><span></span><i class="bi bi-music-note-beamed"></i>Review</h4>
            <h4 ><span></span><i class="bi bi-music-note-beamed"></i>Recommended songs</h4> -->

        </div>
        <div class="menu_song">
            <li class="songItem">
                <span>01</span>
                <img src="img/1.jpg" alt="Alan">
                <h5>
                    On My Way
                    <div class="subtitle">Alan Walker</div>
                </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="1"></i>
            </li>
            <li class="songItem">
                <span>02</span>
                <img src="img/1.jpg" alt="Alan">
                <h5>
                    On My Way
                    <div class="subtitle">Alan Walker</div>
                </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="2"></i>
            </li>
            <li class="songItem">
                <span>03</span>
                <img src="img/1.jpg" alt="Alan">
                <h5>
                    On My Way
                    <div class="subtitle">Alan Walker</div>
                </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="3"></i>
            </li>
            <li class="songItem">
                <span>04</span>
                <img src="img/1.jpg" alt="Alan">
                <h5>
                    On My Way
                    <div class="subtitle">Alan Walker</div>
                </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="4"></i>
            </li>
            <li class="songItem">
                <span>05</span>
                <img src="img/1.jpg" alt="Alan">
                <h5>
                    On My Way
                    <div class="subtitle">Alan Walker</div>
                </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="5"></i>
            </li>
            <li class="songItem">
                <span>06</span>
                <img src="img/1.jpg" alt="Alan">
                <h5>
                    On My Way
                    <div class="subtitle">Alan Walker</div>
                </h5>
                    <i class="bi playListPlay bi-play-circle-fill" id="6"></i>
            </li>
        </div>
    </div>

    <div class="song_side">
        <nav>
            <ul>
                <li>Discover <span></span></li>
                <li>MY LIBRARY</li>
                <!--<li>RADIO</li> -->
            </ul>
            <!-- <div class="search">
                <i class="bi bi-search"></i>
                <input type="text" placeholder="Search Music...">
            </div> -->
            <div class="buttonss">
            <form action="Logout"><button>Log Out</button></form>
            </div>
        </nav>
        <h3>Liked Songs</h3>
        <table class="list">
          <tr class="song">
            <td class="nr">
              <h4>1<h4></td>
                  <td class="title"><h4>Agar Tum Saath Ho<h4></td>
                  <td class="length"><h4>5:41<h4></td>
                  <td><input type="checkbox" id="heart"/><label class="zmr" for="heart"></label></td>
                </tr>

                <tr class="song">
                  <td class="nr"><h4>2<h4></td>
                  <td class="title"><h4>Suna hai<h4></td>
                  <td class="length"><h4>3:13<h4></td>
                  <td><input type="checkbox" id="heart1" checked /><label class="zmr" for="heart1"></label></td>
                </tr>

                <tr class="song">
                  <td class="nr"><h4>3<h4></td>
                  <td class="title"><h4>Dilbar<h4></td>
                  <td class="length"><h4>3:04<h4></td>
                  <td><input type="checkbox" id="heart2"/><label class="zmr" for="heart2"></label></td>
                </tr>

                <tr class="song">
                  <td class="nr"><h4>4<h4></td>
                  <td class="title"><h4>Duniya<h4></td>
                  <td class="length"><h4>3:42<h4></td>
                  <td><input type="checkbox" id="heart3" checked /><label class="zmr" for="heart3"></label></td>
                </tr>

                <tr class="song">
                  <td class="nr"><h4>5<h4></td>
                  <td class="title"><h4>Lagdi Lahore di<h4></td>
                  <td class="length"><h4>3:35<h4></td>
                  <td><input type="checkbox" id="heart4"/><label class="zmr" for="heart4"></label></td>
                </tr>

                <tr class="song">
                  <td class="nr"><h4>6<h4></td>
                  <td class="title"><h4>Putt Jatt Da<h4></td>
                  <td class="length"><h4>2:44<h4></td>
                  <td><input type="checkbox" id="heart5"/><label class="zmr" for="heart5"></label></td>
                </tr>

                <tr class="song">
                  <td class="nr"><h4>7<h4></td>
                  <td class="title"><h4>Baarishein<h4></td>
                  <td class="length"><h4>2:47</h4><h4></td>
                  <td><input type="checkbox" id="heart6"/><label class="zmr" for="heart6"></label></td>
                </tr>

                <tr class="song">
                  <td class="nr"><h4>8<h4></td>
                  <td class="title"><h4>Vaaste<h4></td>
                  <td class="length"><h4>3:16<h4></td>
                  <td><input type="checkbox" id="heart7"/><label class="zmr" for="heart7"></label></td>
                </tr>
                <tr class="song">
                  <td class="nr">
                    <h4>9<h4></td>
                        <td class="title"><h4>Lut Gaye<h4></td>
                        <td class="length"><h4>4:57<h4></td>
                        <td><input type="checkbox" id="heart8"/><label class="zmr" for="heart8"></label></td>
                      </tr>

                      <tr class="song">
                        <td class="nr"><h4>10<h4></td>
                        <td class="title"><h4>Kaise hua<h4></td>
                        <td class="length"><h4>3:54<h4></td>
                        <td><input type="checkbox" id="heart9" checked /><label class="zmr" for="heart9"></label></td>
                      </tr>

                      <tr class="song">
                        <td class="nr"><h4>11<h4></td>
                        <td class="title"><h4>Aashiq hai ye chor nahi hai<h4></td>
                        <td class="length"><h4>7:06<h4></td>
                        <td><input type="checkbox" id="heart10"/><label class="zmr" for="heart10"></label></td>
                      </tr>

                      <tr class="song">
                        <td class="nr"><h4>12<h4></td>
                        <td class="title"><h4>Apna har din aise jiyo<h4></td>
                        <td class="length"><h4>4:27<h4></td>
                        <td><input type="checkbox" id="heart11" checked /><label class="zmr" for="heart11"></label></td>
                      </tr>

                      <tr class="song">
                        <td class="nr"><h4>13<h4></td>
                        <td class="title"><h4>Bhool Bhulaiyya 2<h4></td>
                        <td class="length"><h4>3:31<h4></td>
                        <td><input type="checkbox" id="heart12"/><label class="zmr" for="heart12"></label></td>
                      </tr>

                      <tr class="song">
                        <td class="nr"><h4>14<h4></td>
                        <td class="title"><h4>Designer<h4></td>
                        <td class="length"><h4>3:39<h4></td>
                        <td><input type="checkbox" id="heart13"/><label class="zmr" for="heart13"></label></td>
                      </tr>
              </table>

        <div class="popular_artists">
            <div class="h4">
                <h4>Popular Artists</h4>
                <div class="btn_s">
                    <i id="left_scrolls" class="bi bi-arrow-left-short"></i>
                    <i id="right_scrolls" class="bi bi-arrow-right-short"></i>
                </div>
            </div>
            <div class="item">
                <li>
                    <img src="img/arjit.jpg" alt="Arjit Singh" title="Arjit Singh">
                </li>
                <li>
                    <img src="img/alan.jpg" alt="Alan Walker" title="Alan Walker">
                </li>
                <li>
                    <img src="img/atif.jpg" alt="Atif Aslam" title="Atif Aslam">
                </li>
                <li>
                    <img src="img/guru.jpg" alt="Guru RAndawa" title="Guru Randawa">
                </li>
                <li>
                    <img src="img/dhvani.jpg" alt="Dhvani" title="Dhvani">
                </li>
                <li>
                    <img src="img/Diljit_Dosanjh.jpg" alt="Diljit Dosanjh" title="Diljit Dosanjh">
                </li>
                <li>
                    <img src="img/jubin Nautiyal.jpg" alt="Jubin Nautiyal" title="Jubin Nautiyal">
                </li>
                <li>
                    <img src="img/neha.jpg" alt="Neha Kakker" title="Neha Kakker">
                </li>
                <li>
                    <img src="img/justin-bieber-lede.jpg" alt="Justin Bieber" title="Justin Bieber">
                </li>
                <li>
                    <img src="img/honey.jpg" alt="Honey Singh" title="Honey Singh">
                </li>
                <li>
                    <img src="img/akhil.jpg" alt="Akhil" title="Akhil">
                </li>
                <!-- change all img -->
            </div>
        </div>
    </div>


    <div class="master_play">
        <div class="wave">
            <div class="wave1"></div>
            <div class="wave1"></div>
            <div class="wave1"></div>
        </div>
        <img src="img/26th.jpg" alt="Alan" id="poster_master_play">
        <h5 id="title">Vande Mataram<br>
            <div class="subtitle">Bankim Chandra</div>
        </h5>
        <div class="icon">
            <i class="bi bi-skip-start-fill" id="back"></i>
            <i class="bi bi-play-fill" id="masterPlay"></i>
            <i class="bi bi-skip-end-fill" id="next"></i>
        </div>
        <span id="currentStart">0:00</span>
        <div class="bar">
            <input type="range" id="seek" min="0" value="0" max="100">
            <div class="bar2" id="bar2"></div>
            <div class="dot"></div>
        </div>
        <span id="currentEnd">0:00</span>

        <div class="vol">
            <i class="bi bi-volume-down-fill" id="vol_icon"></i>
            <input type="range" id="vol" min="0" value="30" max="100">
            <div class="vol_bar"></div>
            <div class="dot" id="vol_dot"></div>
        </div>
    </div>
</header>
    <script src="app.js"></script>
</body>

</html>
