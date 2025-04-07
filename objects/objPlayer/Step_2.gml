function get_sprite(action, face) {
    switch (action + face) {
        case "WalkD": return sprPlayerWalkD;
        case "WalkU": return sprPlayerWalkU;
        case "WalkL": return sprPlayerWalkL;
        case "WalkR": return sprPlayerWalkR;
        case "StandD": return sprPlayerStandD;
        case "StandU": return sprPlayerStandU;
        case "StandL": return sprPlayerStandL;
        case "StandR": return sprPlayerStandR;
        default: return sprPlayerStandD;
    }
}