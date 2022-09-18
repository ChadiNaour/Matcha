# Matcha
 A dating website - 1337 school (42 network) project.
# Description
A web app where users can interact with each other.
The user can create his account, and after completing his profile he can search for other users by age, distance, rating, common tags.
With the possibility to like, block or report fake accounts. Two matched users can chat with each other.

# Features
  * Like/unlike, block and report users.
  * Search and filter users.
  * Realtime chat with matched users.
  * Realtime notifications when: a like is received, the user is matched with another one, the users's profile is viewed, a message is received, a matched user unliked.

# Front-end
  * React.js (+hooks)
  * Redux (+ Redux form, Redux-saga)
  * Material-ui

# Back-end
  * Node.js
  * Express.js
  * Socket.io
  * MYSQL

# Prerequisites
  node, yarn

# Running the app
```
cd client && npm install
cd server && npm install
cd server/database && and sh index.sh #to launch db migration with 500+ users
cd server && npm run dev
cd client && serve -s build -l [PORT]
```
# screens
* LOGIN
<img width="1680" alt="login" src="https://user-images.githubusercontent.com/52707617/190917683-24845359-4448-4226-9335-0407d502d317.png">
* REGISTER
<img width="1680" alt="register" src="https://user-images.githubusercontent.com/52707617/190917697-413ca7bf-d5ee-461f-8fc5-f50315287844.png">
* BROWSE
<img width="1667" alt="browse" src="https://user-images.githubusercontent.com/52707617/190917721-489c19d6-ed9e-48ea-8c3f-c06023ec8e13.png">
<img width="1680" alt="Capture d’écran 2022-09-18 à 17 32 37" src="https://user-images.githubusercontent.com/52707617/190917910-92101397-bdb2-4f1a-891b-9c5ffdb82b46.png">
* PROFILE
<img width="1680" alt="profile" src="https://user-images.githubusercontent.com/52707617/190917773-f95e4312-510d-4d3b-b040-290355e499a6.png">
* ACTIVITY
<img width="1680" alt="Activity" src="https://user-images.githubusercontent.com/52707617/190917789-66eb667a-c917-47d2-91fa-5c9f453cfb45.png">
* CHAT
<img width="1680" alt="chat" src="https://user-images.githubusercontent.com/52707617/190917804-80130b2e-4a88-4c2e-a7ae-90fe90c65dfc.png">
* NOTIFICATION
<img width="404" alt="Notif" src="https://user-images.githubusercontent.com/52707617/190917817-bb6f831f-4a27-47dd-aa04-05def0e1a8e7.png">
# Authors
```CHADI NAOUR & ISSAM ZOUITEN```
