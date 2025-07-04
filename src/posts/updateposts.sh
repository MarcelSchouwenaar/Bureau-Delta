#!/bin/bash

# filepath: /Users/Marcel/Sites/BureauDelta/fix_posts.sh

# Define the posts folder
POSTS_FOLDER="/Users/Marcel/Sites/BureauDelta/src/posts"

# Loop through all markdown files in the posts folder
for FILE in "$POSTS_FOLDER"/*.md; do
  echo "Processing $FILE..."

  # Use sed to replace URLs and remove query strings
  sed -i '' -E 's|https://cdn\.glitch\.global/[a-zA-Z0-9-]+/([^?]+)\?v=[0-9]+|/public/images/\1|g' "$FILE"

  echo "Finished processing $FILE."
done

echo "All files in $POSTS_FOLDER have been updated."