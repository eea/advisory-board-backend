FROM eeacms/plone-backend:6.0.13-19
#ENV PROFILES="eea.advisory.policy:default"

COPY requirements.txt constraints.txt /app/
# COPY /develop/etc /app/etc
RUN ./bin/pip install -r requirements.txt -c constraints.txt ${PIP_PARAMS} \
 && find /app -not -user plone -exec chown plone:plone {} \+
