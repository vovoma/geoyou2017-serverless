'use strict';

const buffer = require('turf').buffer;
const point = require('turf').point;

module.exports.buffer = (event, context, callback) => {
  const payload = event.body ? JSON.parse(event.body): event;

  // Buffer point by 10 miles
  const result = buffer(point([payload.x, payload.y]), 10, 'miles');

  const response = event.body ? {
    statusCode: 200,
    body: JSON.stringify(result)
  }: result;

  // Return back via API response or raw response
  callback(null, response);
};
