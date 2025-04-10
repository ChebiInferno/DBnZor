function get_sprite(action, face) {
    switch (action + face) {
        case "WalkD": return sprPlayerWalkD;
        case "WalkU": return sprPlayerWalkU;
        case "WalkL": return sprPlayerWalkL;
        case "WalkR": return sprPlayerWalkR;
		case "WalkDL": return sprPlayerWalkDL;
        case "WalkDR": return sprPlayerWalkUR;
        case "WalkUL": return sprPlayerWalkUL;
        case "WalkUR": return sprPlayerWalkUR;
        case "IdleD": return sprPlayerIdleD;
        case "IdleU": return sprPlayerIdleU;
        case "IdleL": return sprPlayerIdleL;
        case "IdleR": return sprPlayerIdleR;
		case "IdleDL": return sprPlayerIdleDR;
        case "IdleDR": return sprPlayerIdleDL;
        case "IdleUL": return sprPlayerIdleUL;
        case "IdleUR": return sprPlayerIdleUR;
        default: return sprPlayerIdleD;
    }
}