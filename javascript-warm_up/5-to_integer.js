#!/usr/bin/node
const args = process.argv.slice(2);
const num = parseInt(args);

if (num === undefined) {
  console.log('Not a number');
} else if (isNaN(num)) {
  console.log('Not a number');
} else {
  console.log(`My number: ${num}`);
}
