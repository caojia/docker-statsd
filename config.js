(function() {
    return {
        graphitePort: parseInt(process.env.GRAPHITE_PORT_2003_TCP_PORT),
        graphiteHost: process.env.GRAPHITE_PORT_2003_TCP_ADDR,
        port: parseInt(process.env.STATSD_PORT),
        dumpMessages: process.env.STATSD_DUMP_MSG == "true",
        debug: process.env.STATSD_DEBUG == "true",
        flushInterval: parseInt(process.env.STATSD_FLUSH_INTERVAL),

        graphite: {
            globalPrefix: process.env.GRAPHITE_GLOBAL_PREFIX,
            legacyNamespace: process.env.GRAPHITE_LEGACY_NAMESPACE == 'true'
        }
    };
})()
