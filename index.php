<?php 
require 'components/header.php';

$app = "<script src='./assets/js/app.register.js'></script>";
?>


<div id="signin">
    <form @submit="saveGuests($event)">
        <input type="text" name="fullname" placeholder="Fullname">
        <input type="email" name="email" placeholder="Email">
        <input type="text" name="website" placeholder="Website URL">
        <textarea name="comment" id="" cols="30" rows="10" placeholder="Comment"></textarea>
        <button type="submit">Submit</button>
    </form>

    <div class="latest-guest">
        <div class="guest-card" v-for="guest in guests">
            <span>Fullname: {{guest.fullname}}</span>
            <span>Email: {{guest.email}}</span>
            <span>Website URL: {{guest.website}}</span>
            <span>Comments: {{guest.comment}}</span>
        </div>
    </div>
</div>



<?php require_once './components/footer.php' ?>
