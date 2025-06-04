CREATE TABLE IF NOT EXISTS achievements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    description TEXT,
    tier INTEGER,
    type TEXT
);

CREATE TABLE IF NOT EXISTS players (
    username TEXT PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS player_achievements (
    username TEXT,
    achievement_id INTEGER,
    completed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (username, achievement_id),
    FOREIGN KEY (username) REFERENCES players(username) ON DELETE CASCADE,
    FOREIGN KEY (achievement_id) REFERENCES achievements(id) ON DELETE CASCADE
);
