kotlinr() {
  if [[ -z "$1" ]]; then
    echo "Error: No file specified."
    echo "Usage: kotlinr <filename>.kt"
    return 1
  fi

  if [[ ! -f "$1" || "${1##*.}" != "kt" ]]; then
    echo "Error: File not found or not a Kotlin file."
    return 1
  fi

  local output="${2:-Output}.jar"  # Default to Output.jar if no second argument
  kotlinc "$1" -include-runtime -d "$output"
  if [[ $? -ne 0 ]]; then
    echo "Compilation failed."
    return 1
  fi

  java -jar "$output"
  if [[ "$3" != "--keep" ]]; then
    rm "$output"
  fi
}
