function palindrome(input: string): boolean {
  const cleanedStr: string = input.replace(/[^a-zA-Z0-9]/g, '').toLowerCase();
  return cleanedStr === cleanedStr.split('').reverse().join('');
}

const input: string = 'makam';
if (palindrome(input)) {
  console.log(true);
} else {
  console.log(false);
}
