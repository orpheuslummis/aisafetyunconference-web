# assumes bucket exists and is configured to serve a static website
# assumes awscli is installed and configured

BUCKET := aisafetyunconference.info
DISTRIBUTION := EQYLICGMIMYON

deploy:
	aws s3 sync . s3://$(BUCKET) --exclude "*" --include "*.html" --include "*.jpg" --include "*.css" --include "*.png"
	aws cloudfront create-invalidation --distribution-id $(DISTRIBUTION) --paths '/*'

