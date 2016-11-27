import {exec} from 'child_process';
import {promisify} from 'bluebird';

const execAsync = promisify(exec);



export default async function sound() {
  const vol =  Number(await execAsync('ponymix --input get-volume'));
  const muted = await execAsync('ponymix --input is-muted').then(r => true).catch(e => false);

  return `${vol}% ${muted ? '\uf131' : '\uf130'}`;
}
