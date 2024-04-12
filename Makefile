.PHONY: build

build: 
	sam build

deploy-infra: 
	sam build && aws-vault exec VaultUser --no-session -- sam deploy

deploy-site: 
	aws-vault exec VaultUser --no-session -- aws s3 sync ./brandons-aws s3://my-awscloud-resume
