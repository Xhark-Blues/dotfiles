import {promisify} from 'bluebird';
const {get_active_interface, interface_type_for} = require('network');

const activeInterface = promisify(get_active_interface);

export default function network() {
  return activeInterface()
    .then((i:any) => `${i.name} \uf0e8`)
    .catch(e => null);
}
