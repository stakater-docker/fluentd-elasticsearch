FROM openshift/origin-logging-fluentd:v3.11.0


RUN gem install -N --conservative --minimal-deps --no-ri --no-doc \
     'activesupport:<5' \
     'public_suffix:<3' \
     'elasticsearch-transport:<6' \
     'elasticsearch-api:<6' \
     'elasticsearch:<6' \
      fluentd:${FLUENTD_VERSION} \
     'fluent-plugin-elasticsearch:<2.0.0' \
     'fluent-plugin-kubernetes_metadata_filter:<2' \
     'fluent-plugin-record-modifier:<1.0.0' \
     'fluent-plugin-rewrite-tag-filter:<1.6.0' \
      fluent-plugin-secure-forward \
     'fluent-plugin-systemd:<0.1.0' \
      fluent-plugin-viaq_data_model \
     'fluent-plugin-remote-syslog:1.1' \
     'fluent-plugin-prometheus:<1.0.0' \
     'ffi:1.9.25' \
     'fluent-plugin-concat:<2.0.0' \
     'fluent-plugin-detect-exceptions:0.0.11' \
     'fluent-plugin-multi-format-parser:<1.0.0' \
     'fluent-plugin-slack:0.6.7' \
     'oj:3.6.5' \
     'fluent-plugin-pagerduty:0.1.0'


WORKDIR ${HOME}
USER 0
CMD ["sh", "run.sh"]