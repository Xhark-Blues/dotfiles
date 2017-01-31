
import {promisifyAll} from 'bluebird';
const Docker = require('dockerode');

const dock = new Docker();
promisifyAll(dock);

export default async function docker() {
  const containers = await dock.listContainersAsync();

  return `${containers.length} \uf085`;
}
