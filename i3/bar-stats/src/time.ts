import * as moment from 'moment';

export default async function time() {
  const date = moment();

  // f073 is a calendar glyph
  return  `\uf073 ${date.format('dd DD HH:mm:ss')}`;
}
