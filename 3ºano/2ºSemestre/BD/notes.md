# Overview

## General Notes

All the information about the class is available in [elearning](https://elearning.ua.pt/)

### Practical classes

Every class will have its own Lab script, available in [elearning](https://elearning.ua.pt/mod/folder/view.php?id=23404).

The Lab must be completed as *groups of two elements* (**Mandatory**).
Elements should sit together, preferably in the same spot every class.

The Lab must be submitted in [elearning](https://elearning.ua.pt/) before the next class (Sunday EOD).
The delivery must be a **Zip** File following this naming convention: *GuiaoX_NMEC1_NMEC2.zip*
Other archive formats, such as *RAR* or *TAR* **will not be accepted**.

Your answers should be written in a markdown template distributed before the class (via email).
This template, along with any supplement material, such as images or code projects, should be placed in the **root** of the submission **ZipFile**.
We will guide how to correctly fill the template at the beginning of the class.

This page provides some examples of the templates for each class.
It also has a verification tool that you can use to make sure your submission is correct.

(Show [instructions](../../templates/instructons.md), [aula2 template](../../templates/aula2_submit.md))

Any questions regarding the practical classes can be sent via email.
Alternatively, you can send a message to me through Slack.

## Aula 1

The goal of this class is just to:
* Install the software needed for the course
* Form the working groups
* Provide access to the group database @ IEETA

### Install the Software needed for the course

#### SQL Management Studio

Start by installing the [SQL Server Management Studio](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16#download-ssms).
It's faster and you will be able to jump to the first task while installing the database server.

#### SQL Server Express

When it's finished, proceed to install the SQL Server 2019 Express. You can find an [offline installer here](https://download.microsoft.com/download/7/c/1/7c14e92e-bdcb-4f89-b7cf-93543e7112d1/SQLEXPR_x64_ENU.exe).

**Important**, follow [this tutorial](https://diadem.in/blog/sql-server-2019-express-installation) step by step.
**Follow the images to the letter** (after *SQL Server Features installation*).
In particular, the *Feature Selection* and *Mixed Mode Authentication*.

**Do not forget your username and password.**

You can proceed to the first question while the database server is being installed, 
provided you already have the IEETA database credentials.

#### Development Environment / Programing Language

Although the Lab guide only mentions *C#*,
you will be able to select between; *C#*, *.NET CORE*, and *Python*.
Please select the language you feel more comfortable and productive.
All of them will be supported.

Questions 1.2 and 1.3 must be adapted to the language of your choice.
You need to set up your development environment
and play with a simple app to test the connectivity to your local and the group database @ IEETA.
Check out the links for the sample projects below to get you started.

##### Python

The project was built with Flask, HTML, and HTMX.

The focus must be put on the *Database Access Layer*.
The UI will not be subject to evaluation.
Focus on interacting with the data and not on the looks.

**You must use the ODBC driver to interact with the database**.
**All ORM Library or Framework, such as SQLAlchemy, are strictly forbidden**.
Although, we do encourage you to explore these libraries outside of the course.
We will teach you the fundamentals for building your own ORM.

You are free to add additional dependencies provided but they must be vetted by your professor.

TODO: Insert link.

##### .NET CORE

[Sample Project](https://github.com/CarlosCosta-UA/BD-UA/blob/main/aula1/aula1_dotnetcore_optional.md)

### Group Database @ IEETA

You will be asked to change the password in the first login.
Please share the new password with your group colleague.

**DO NOT FORGET YOUR PASSWORD.** 
If for some reason you are not able to follow this advice,
send an email directly to the course Head Professor as soon as possible.
