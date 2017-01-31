
const btr = require('linux-battery');

export default async function battery() {
  try {
    const bat = (await btr())[0];

    return `${bat.percentage} ${bat.timeToFull ? '\uf1e6' : '\uf240'}`;
  }
  catch(e) {
    return '\uf1e6'
  };
}
