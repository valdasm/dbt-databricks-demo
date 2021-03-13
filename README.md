DBT Project example

### Setup

- python -m venv dbt-env
- pip install dbt
- pip install "dbt-spark[ODBC]" OR pip install "dbt-spark[PyHive]"

Try running the following commands:
- dbt compile
- dbt debug
- dbt test
- dbt run
- dbt docs generate
- dbt docs serve

### Limitations
- No support for Azure password passthrough

### Environment setup issues
- Issues with Python 3.9 -> I used Python 3.7.x
- "Failed building wheel for cryptography"
  pip install cryptography  
  OR follow https://stackoverflow.com/questions/22073516/failed-to-install-python-cryptography-package-with-pip-and-setup-py/22210069 
  Remember to install full OpenSSL

- "Cannot open include file: 'sasl/sasl.h': No such file or directory"
  Follow links, download sasl and install manually  
  https://stackoverflow.com/questions/26505882/unable-to-install-sasl-0-1-3-python-package-on-windows-machine  
  https://www.chriscalender.com/resolving-saslsasl-h-not-found-during-cmake-when-building-mysql-on-windows/  
  https://www.lfd.uci.edu/~gohlke/pythonlibs/#sasl  
  pip install sasl-0.2.1-cp37-cp37m-win_amd64.whl  


- "Error running query: com.databricks.backend.daemon.data.client.adl.AzureCredentialNotFoundException: Could not find ADLS Gen2 Token"
  Databricks credential passthrough not supported


## Links

- https://www.dataplatformschool.com/blog/u1a0r7-install-dbt-on-windows
- https://www.dataplatformschool.com/blog/p1p1c7-data-pipelines-with-dbt-data-buil


