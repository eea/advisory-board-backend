#!/usr/bin/env bash
globalTests+=(
        utc
        no-hard-coded-passwords
        override-cmd
)

imageTests+=(
	[eeacms/eea-website-backend]='
		plone-basics
		plone-site
		plone-addons
		plone-cors
		plone-arbitrary-user
		plone-zeoclient
		plone-relstorage
	'
)

globalExcludeTests+=(

)
