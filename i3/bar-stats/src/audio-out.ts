import {exec} from 'child_process';
import {promisify} from 'bluebird';

const execAsync = promisify(exec);


export default async function audio() {
  const audio = Number(await execAsync('ponymix get-volume'));
  return `${audio}% \uf028`;
}
