import {exec} from 'child_process';
import {promisify} from 'bluebird';

const execAsync = promisify(exec);


export default async function audio() {
  const audio = Number(await execAsync('ponymix get-volume'));
  const muted = await execAsync('ponymix is-muted').then(r => true).catch(e => false);
  return `${audio}% ${ muted ? '\uf026' : '\uf028'}`;
}
