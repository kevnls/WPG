/// scr_move_state
scr_get_input();

if (right_key)
{
    phy_position_x += spd;
    sprite_index = spr_player_right;
    image_speed = anim_spd;
}

if (left_key)
{
    phy_position_x -= spd;
    sprite_index = spr_player_left;
    image_speed = anim_spd;
}

if (down_key)
{
    phy_position_y += spd;
    sprite_index = spr_player_down;
    image_speed = anim_spd;
}

if (up_key)
{
    phy_position_y -= spd;
    sprite_index = spr_player_up;
    image_speed = anim_spd;
}

// stop animating
if (!right_key and !left_key and !down_key and !up_key)
{
    image_speed = 0;
    image_index = 0;
}
