FROM sysdiglabs/cloud-connector:0.16.34 as connector
RUN echo "test"

FROM bash:5.1.0
RUN mkdir /tmp/cloud-connector
RUN mkdir /tmp/guardduty
COPY --from=connector /cloud-connector /tmp/cloud-connector
COPY --from=connector /rules/aws/guardduty /tmp/guardduty

