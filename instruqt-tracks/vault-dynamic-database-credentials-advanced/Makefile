source_dir = "/Users/kawsark/code/git/kawsark/field-workshops-vault/instruqt-tracks/vault-dynamic-database-credentials-advanced"
dest_dir = "/Users/kawsark/code/instruqt/vault-dynamic-database-credentials-advanced"

info:
	echo "Source directory is: $(source_dir)"
	echo "Dest directory is: $(dest_dir)"
	echo "Adjust source and destination directories, then run make push"

check_trailing_space:
	./check_trailing_space.sh

copy:
	cp -r $(source_dir)/configure-database-secrets-engine $(dest_dir)/
	cp -r $(source_dir)/enable-database-secrets-engine $(dest_dir)/
	cp -r $(source_dir)/generate-database-creds $(dest_dir)/
	cp -r $(source_dir)/renew-revoke-database-creds $(dest_dir)/
	cp $(source_dir)/track.yml $(dest_dir)/
	cp $(source_dir)/config.yml $(dest_dir)/

push: check_trailing_space copy
	cd $(dest_dir) && instruqt track push --force

logs:
	instruqt track logs --slug hashicorp/vault-replication-track
