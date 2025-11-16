global.player_health = 3;
global.can_take_dmg = true;

// initialize references
hs1 = noone;
hs2 = noone;
hs3 = noone;

// find health hearts
with (Obj_health) {
    if (is_health_sprite) {
        switch (health_index) {
            case 1: other.hs1 = id; break;
            case 2: other.hs2 = id; break;
            case 3: other.hs3 = id; break;
        }
    }
}