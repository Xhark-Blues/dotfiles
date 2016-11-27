#!/bin/node
import {reduce} from 'bluebird';
import time from './time';
import battery from './battery';
import network from './network';
import docker from './docker';



setInterval(async () => {
  const dock = await docker();
  const toPrint = await reduce([docker(), network(), battery(), time()], (acc, stat, i) => {
    if(stat) {
      return acc + (i ? ' ' : '') + stat
    }
    return acc;
  }, '');

  console.log(toPrint);
}, 1000)
