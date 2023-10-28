
"use strict";

let TestResponseOnly = require('./TestResponseOnly.js')
let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let SendBytes = require('./SendBytes.js')
let TestRequestOnly = require('./TestRequestOnly.js')
let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let TestArrayRequest = require('./TestArrayRequest.js')
let TestEmpty = require('./TestEmpty.js')
let TestNestedService = require('./TestNestedService.js')
let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')
let AddTwoInts = require('./AddTwoInts.js')

module.exports = {
  TestResponseOnly: TestResponseOnly,
  TestMultipleRequestFields: TestMultipleRequestFields,
  SendBytes: SendBytes,
  TestRequestOnly: TestRequestOnly,
  TestRequestAndResponse: TestRequestAndResponse,
  TestArrayRequest: TestArrayRequest,
  TestEmpty: TestEmpty,
  TestNestedService: TestNestedService,
  TestMultipleResponseFields: TestMultipleResponseFields,
  AddTwoInts: AddTwoInts,
};
