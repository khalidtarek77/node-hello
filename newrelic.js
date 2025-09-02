'use strict'

/**
 * New Relic agent configuration.
 *
 * See docs: https://docs.newrelic.com/docs/agents/nodejs-agent/installation-configuration/
 */
exports.config = {
  app_name: ['node-hello-app'],   // your app name in New Relic
  license_key: process.env.NEW_RELIC_LICENSE_KEY, // store key in env var
  logging: {
    level: 'info' // 'trace' for very detailed logs
  }
}
