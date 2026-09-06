#!/bin/bash

TRASH_DIR="$HOME/.local/share/Trash/files"
COUNT=$(ls -A "$TRASH_DIR" 2>/dev/null | wc -l)

if [ "$COUNT" -eq 0 ]; then
    # Empty trash icon and tooltip
    TEXT=""
    TOOLTIP="Trash is empty"
    CLASS="empty"
else
    # Full trash icon, item count, and tooltip
    TEXT=""
    TOOLTIP="$COUNT items in trash"
    CLASS="full"
fi

echo "{\"text\":\"$TEXT\", \"tooltip\":\"$TOOLTIP\", \"class\":\"$CLASS\"}"
