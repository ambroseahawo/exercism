export function frontDoorResponse(line) {
  return line[0]
}

export function frontDoorPassword(word) {
  const lowerCaseWord = word.toLowerCase()
  return lowerCaseWord.charAt(0).toUpperCase() + lowerCaseWord.slice(1)
}

export function backDoorResponse(line) {
  const noWhitespaceLine = line.replace(/[\t\n\r]/gm, '').trim()
  return noWhitespaceLine.charAt(noWhitespaceLine.length - 1)
}

export function backDoorPassword(word) {
  return `${word.charAt(0).toUpperCase() + word.slice(1)}, please`
}