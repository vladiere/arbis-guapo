<?php 

class queries
{
    public function saveGuestQuery()
    {
        return "INSERT INTO tbl_guests (guest_name,guest_email,guest_website,guest_comments) VALUES (?,?,?,?)";
    }

    public function getGuestQuery()
    {
        return "SELECT * FROM tbl_guests";
    }
}

?>