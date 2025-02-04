-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Run" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "startDate" DATETIME NOT NULL,
    "description" TEXT NOT NULL,
    "badges" JSONB NOT NULL,
    "status" TEXT NOT NULL,
    "worldRecord" BOOLEAN NOT NULL,
    "distancePB" JSONB,
    "splits" JSONB,
    "completedSplits" INTEGER,
    "failedSplit" JSONB,
    "currentOrder" JSONB,
    "games" JSONB,
    "pastRuns" JSONB,
    "playerId" TEXT NOT NULL,
    CONSTRAINT "Run_playerId_fkey" FOREIGN KEY ("playerId") REFERENCES "Player" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Run" ("badges", "completedSplits", "description", "distancePB", "failedSplit", "id", "name", "pastRuns", "playerId", "splits", "startDate", "status", "type", "worldRecord") SELECT "badges", "completedSplits", "description", "distancePB", "failedSplit", "id", "name", "pastRuns", "playerId", "splits", "startDate", "status", "type", "worldRecord" FROM "Run";
DROP TABLE "Run";
ALTER TABLE "new_Run" RENAME TO "Run";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
