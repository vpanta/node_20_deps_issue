import {evaluate} from 'mathjs';
import {writeFileSync} from 'fs';

export function main() {
  writeFileSync('run_foo/output.txt', `${evaluate('sin(45 deg) ^ 2')}`);
}
