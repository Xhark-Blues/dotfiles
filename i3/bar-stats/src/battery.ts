
const btr = require('linux-battery');

export default async function battery() {
  const bat = (await btr())[0];

  return `${bat.timeToFull ? '\uf1e6' : '\uf240'} ${bat.percentage}`;
}
