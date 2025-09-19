[1mdiff --git a/index.html b/index.html[m
[1mindex b7e64ba..06bf944 100644[m
[1m--- a/index.html[m
[1m+++ b/index.html[m
[36m@@ -9,9 +9,18 @@[m
   <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500;600&display=swap" rel="stylesheet">[m
 </head>[m
 <body>[m
[31m-   <h1>[m
[31m-    [m
[31m-   </h1>[m
[32m+[m[32m  <div class="animated-bg">[m
[32m+[m[32m    <div class="particle"></div>[m
[32m+[m[32m    <div class="particle"></div>[m
[32m+[m[32m    <div class="particle"></div>[m
[32m+[m[32m    <div class="particle"></div>[m
[32m+[m[32m    <div class="particle"></div>[m
[32m+[m[32m    <div class="particle"></div>[m
[32m+[m[32m  </div>[m
[32m+[m[41m  [m
[32m+[m[32m  <h1 class="glitch-text" data-text="zykn">[m
[32m+[m[32m    zykn[m
[32m+[m[32m  </h1>[m
 [m
   <!-- the goofy little cat is from webneko.net please support!! -->[m
   <script>NekoType="spooky"</script>[m
[36m@@ -22,7 +31,16 @@[m
 [m
   <div class="layout-wrapper">[m
     <div class="activity-feed">[m
[31m-      <p class="Checklist">Activity Feed</p>[m
[32m+[m[32m      <div class="music-header">[m
[32m+[m[32m        <p class="Checklist">Activity Feed</p>[m
[32m+[m[32m        <div class="visualizer">[m
[32m+[m[32m          <div class="bar"></div>[m
[32m+[m[32m          <div class="bar"></div>[m
[32m+[m[32m          <div class="bar"></div>[m
[32m+[m[32m          <div class="bar"></div>[m
[32m+[m[32m          <div class="bar"></div>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      </div>[m
 [m
       <div class="lastfm-now" id="lastfm-now">Loading current track...</div>[m
 [m
[36m@@ -38,7 +56,7 @@[m
       <img class="avatar" src="Images/71a461428e57df72f25357925da768b9.jpg" alt="Avatar">[m
       <div class="name">zykn</div>[m
       <div class="plug">(on discord too..)</div>[m
[31m-      <div class="Occupation">Student</div>[m
[32m+[m[32m      <div class="Occupation typing-text" data-text="Student">Student</div>[m
       <div class="note">(press kitty top left)</div> <!-- he gets lonely stop snooping and pet him.-->[m
       <div class="links">[m
         <div class="preview-container">[m
[1mdiff --git a/style.css b/style.css[m
[1mindex 77f32e0..6f7578a 100644[m
[1m--- a/style.css[m
[1m+++ b/style.css[m
[36m@@ -12,6 +12,121 @@[m [mbody {[m
   margin: 0;[m
   padding: 0;[m
   display: block;[m
[32m+[m[32m  overflow-x: hidden;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m/* Animated Background */[m
[32m+[m[32m.animated-bg {[m
[32m+[m[32m  position: fixed;[m
[32m+[m[32m  top: 0;[m
[32m+[m[32m  left: 0;[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m  height: 100%;[m
[32m+[m[32m  pointer-events: none;[m
[32m+[m[32m  z-index: -1;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.particle {[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  width: 2px;[m
[32m+[m[32m  height: 2px;[m
[32m+[m[32m  background: #333;[m
[32m+[m[32m  border-radius: 50%;[m
[32m+[m[32m  animation: float 20s infinite linear;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.particle:nth-child(1) {[m
[32m+[m[32m  left: 10%;[m
[32m+[m[32m  animation-delay: 0s;[m
[32m+[m[32m  background: #444;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.particle:nth-child(2) {[m
[32m+[m[32m  left: 30%;[m
[32m+[m[32m  animation-delay: -5s;[m
[32m+[m[32m  background: #555;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.particle:nth-child(3) {[m
[32m+[m[32m  left: 50%;[m
[32m+[m[32m  animation-delay: -10s;[m
[32m+[m[32m  background: #333;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.particle:nth-child(4) {[m
[32m+[m[32m  left: 70%;[m
[32m+[m[32m  animation-delay: -15s;[m
[32m+[m[32m  background: #666;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.particle:nth-child(5) {[m
[32m+[m[32m  left: 85%;[m
[32m+[m[32m  animation-delay: -8s;[m
[32m+[m[32m  background: #444;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.particle:nth-child(6) {[m
[32m+[m[32m  left: 20%;[m
[32m+[m[32m  animation-delay: -12s;[m
[32m+[m[32m  background: #555;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m@keyframes float {[m
[32m+[m[32m  0% {[m
[32m+[m[32m    transform: translateY(100vh) rotate(0deg);[m
[32m+[m[32m    opacity: 0;[m
[32m+[m[32m  }[m
[32m+[m[32m  10% {[m
[32m+[m[32m    opacity: 1;[m
[32m+[m[32m  }[m
[32m+[m[32m  90% {[m
[32m+[m[32m    opacity: 1;[m
[32m+[m[32m  }[m
[32m+[m[32m  100% {[m
[32m+[m[32m    transform: translateY(-100vh) rotate(360deg);[m
[32m+[m[32m    opacity: 0;[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m/* Glitch Text Effect */[m
[32m+[m[32m.glitch-text {[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  top: 20px;[m
[32m+[m[32m  left: 50%;[m
[32m+[m[32m  transform: translateX(-50%);[m
[32m+[m[32m  font-size: 2.5rem;[m
[32m+[m[32m  font-weight: bold;[m
[32m+[m[32m  color: #fff;[m
[32m+[m[32m  text-shadow: 0 0 10px rgba(255,255,255,0.5);[m
[32m+[m[32m  cursor: pointer;[m
[32m+[m[32m  transition: all 0.3s ease;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.glitch-text:hover {[m
[32m+[m[32m  animation: glitch 0.5s infinite;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m@keyframes glitch {[m
[32m+[m[32m  0%, 100% {[m
[32m+[m[32m    text-shadow: 0 0 10px rgba(255,255,255,0.5);[m
[32m+[m[32m    transform: translateX(-50%);[m
[32m+[m[32m  }[m
[32m+[m[32m  20% {[m
[32m+[m[32m    text-shadow: 2px 0 0 #ff00ff, -2px 0 0 #00ffff;[m
[32m+[m[32m    transform: translateX(-50%) translateX(2px);[m
[32m+[m[32m  }[m
[32m+[m[32m  40% {[m
[32m+[m[32m    text-shadow: -2px 0 0 #ff00ff, 2px 0 0 #00ffff;[m
[32m+[m[32m    transform: translateX(-50%) translateX(-2px);[m
[32m+[m[32m  }[m
[32m+[m[32m  60% {[m
[32m+[m[32m    text-shadow: 2px 0 0 #00ffff, -2px 0 0 #ff00ff;[m
[32m+[m[32m    transform: translateX(-50%) translateX(2px);[m
[32m+[m[32m  }[m
[32m+[m[32m  80% {[m
[32m+[m[32m    text-shadow: -2px 0 0 #00ffff, 2px 0 0 #ff00ff;[m
[32m+[m[32m    transform: translateX(-50%) translateX(-2px);[m
[32m+[m[32m  }[m
 }[m
 .layout-wrapper {[m
   display: flex;[m
[36m@@ -33,6 +148,56 @@[m [mbody {[m
   gap: 24px;[m
   box-shadow: 0 4px 10px rgba(0,0,0,0.3);[m
   justify-self: start;[m
[32m+[m[32m  animation: slideInLeft 0.8s ease-out;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m@keyframes slideInLeft {[m
[32m+[m[32m  from {[m
[32m+[m[32m    opacity: 0;[m
[32m+[m[32m    transform: translateX(-50px);[m
[32m+[m[32m  }[m
[32m+[m[32m  to {[m
[32m+[m[32m    opacity: 1;[m
[32m+[m[32m    transform: translateX(0);[m
[32m+[m[32m  }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.music-header {[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  align-items: center;[m
[32m+[m[32m  justify-content: space-between;[m
[32m+[m[32m  width: 100%;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.visualizer {[m
[32m+[m[32m  display: flex;[m
[32m+[m[32m  align-items: end;[m
[32m+[m[32m  gap: 3px;[m
[32m+[m[32m  height: 20px;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.bar {[m
[32m+[m[32m  width: 3px;[m
[32m+[m[32m  background: linear-gradient(to top, #333, #666, #999);[m
[32m+[m[32m  border-radius: 2px;[m
[32m+[m[32m  animation: bounce 1.5s infinite ease-in-out;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32m.bar:nth-child(1) { animation-delay: 0.1s; }[m
[32m+[m[32m.bar:nth-child(2) { animation-delay: 0.2s; }[m
[32m+[m[32m.bar:nth-child(3) { animation-delay: 0.3s; }[m
[32m+[m[32m.bar:nth-child(4) { animation-delay: 0.4s; }[m
[32m+[m[32m.bar:nth-child(5) { animation-delay: 0.5s; }[m
[32m+[m
[32m+[m[32m@keyframes bounce {[m
[32m+[m[32m  0%, 100% {[m
[32m+[m[32m    height: 5px;[m
[32m+[m[32m    background: linear-gradient(to top, #333, #555);[m
[32m+[m[32m  }[m
[32m+[m[32m  50% {[m
[32m+[m[32m    height: 20px;[m
[32m+[m[32m    background: linear-gradient(to top, #666