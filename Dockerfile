FROM eeacms/plone-backend:6.0.15-13
#ENV PROFILES="eea.advisory.policy:default"

# COPY /develop/etc /app/etc
COPY requirements.txt constraints.txt /app/
COPY ./etc/zodbpack.conf /app/etc/zodbpack.conf

RUN ./bin/pip install -r requirements.txt -c constraints.txt ${PIP_PARAMS} \
 && find /app -not -user plone -exec chown plone:plone {} \+
