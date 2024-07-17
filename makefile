env-create: |
		python3 -m venv .venv
		source .venv/bin/activate

install:
		pip install -r requirements.txt

	