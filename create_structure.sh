#!/bin/bash

# Define the directory structure
dirs=(
  ".next"
  "convex/_generated"
  "node_modules"
  "public/images"
  "public/mock-interviews"
  "public/resume-templates"
  "src/app/fonts"
  "src/components"
  "src/pages"
  "src/game/data"
  "src/game/hooks"
  "src/utils"
)

files=(
  "convex/api.d.ts"
  "convex/server.js"
  "src/app/globals.css"
  "src/app/layout.tsx"
  "src/app/page.tsx"
  "src/components/Button.tsx"
  "src/components/Header.tsx"
  "src/components/QuizCard.tsx"
  "src/components/Modal.tsx"
  "src/components/ResumeBuilder.tsx"
  "src/components/InterviewRound.tsx"
  "src/pages/index.tsx"
  "src/pages/mock-interview.tsx"
  "src/pages/practice-test.tsx"
  "src/pages/interview-questions.tsx"
  "src/pages/resume-builder.tsx"
  "src/pages/interview-rounds.tsx"
  "src/game/data/interview-questions.ts"
  "src/game/data/practice-test.ts"
  "src/game/data/resume-data.ts"
  "src/utils/api.ts"
  "src/utils/resumeUtils.ts"
  "src/utils/interviewUtils.ts"
  "src/utils/practiceUtils.ts"
)

# Create directories if they don't exist
for dir in "${dirs[@]}"; do
  if [ ! -d "$dir" ]; then
    echo "Creating directory: $dir"
    mkdir -p "$dir"
  else
    echo "Directory exists: $dir"
  fi
done

# Create files if they don't exist
for file in "${files[@]}"; do
  if [ ! -f "$file" ]; then
    echo "Creating file: $file"
    touch "$file"
  else
    echo "File exists: $file"
  fi
done

echo "Directory and file check complete."
