.. image:: docs/tokendito.png
   :align: center

Generate temporary AWS credentials via Okta. 

.. image:: docs/tokendito-scaled.gif

NOTE: Advanced users may shorten the tokendito interaction to a single command.

.. _STS: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html

Use tokendito to generate temporary AWS credentials via Okta for programmatic authentication to AWS. Tokendito signs you in to Okta and uses your existing AWS integration to broker your SAML assertion into your AWS accounts, returning STS_ tokens into your local ``~/.aws/credentials`` file. 

Requirements
------------

* Python 2.7.10+
* Your AWS account is federated in Okta


Getting started
---------------

#. Install (via PyPi): ``pip install tokendito``

#. Run ``tokendito --configure``.

#. Run ``tokendito``.

tokendito is compatible with both python 2 and 3, and can be installed with either pip or pip3.

.. image:: https://circleci.com/gh/dowjones/tokendito/tree/master.svg?style=svg
    :target: https://circleci.com/gh/dowjones/tokendito/tree/master

=========
Tips, tricks, troubleshooting, examples, and more docs are `here <docs/README.rst>`_! Also, `contributions are welcome <docs/CONTRIBUTING.rst>`_!
=========