# ----------------------------------
#         LOCAL SET UP
# ----------------------------------
install_requirements:
	@pip install -r requirements.txt

install:
	@pip install . -U

upload_simple_model:
	@python -m TaxiFareModel.trainer

# ----------------------------------
#         API COMMANDS
# ----------------------------------
APP_NAME=api-wagon
api:
	-@python app.py

heroku_login:
	-@heroku login

heroku_create_app:
	-@heroku create ${APP_NAME}

deploy_heroku:
	-@git push heroku master
	-@heroku ps:scale web=1

heroku_set_gcp_env:
# 	-@heroku config:set GOOGLE_APPLICATION_CREDENTIALS="$(< /Users/jdlourenco/dev/lewagon/gcp/wagon_bootcamp-efb2ea08adae.json)"
	-@heroku config:set GOOGLE_APPLICATION_CREDENTIALS="$(< cat /Users/jdlourenco/dev/lewagon/gcp/wagon_bootcamp-efb2ea08adae.json)"

heroku_update: deploy_heroku heroku_set_gcp_env
# ----------------------------------
#    CLEANING COMMAND
# ----------------------------------

clean:
	@rm -fr */__pycache__
	@rm -fr __init__.py
	@rm -fr build
	@rm -fr dist
	@rm -fr $TaxiFareModel-*.dist-info
	@rm -fr $TaxiFareModel.egg-info
