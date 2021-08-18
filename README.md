# Terraform AutoDocs Action

## Description

This Github action is a wrapper for [terraform-docs](https://github.com/terraform-docs/terraform-docs), a utility to generate documentation from Terraform modules. An example is included `examples/s3-bucket/Readme.md`

## Usage

```yaml
- name: Terraform AutoDocs Action
  uses: fac/terraform-autodocs-action@v1
  with:
    directories: "networking/ data-stores/ security/"
```

## Inputs

### directories

A list of directories containing terraform files where it will look for an `INFO.md` file within each of the target directories.

### options

The default configuration options are defined within the `.terraform-docs.yml` file but can be overwritten using the `options` input.

```console
  -c, --config string               config file name (default ".terraform-docs.yml")
      --footer-from string          relative path of a file to read footer from (default "")
      --header-from string          relative path of a file to read header from (default "main.tf")
  -h, --help                        help for terraform-docs
      --hide strings                hide section [all, data-sources, footer, header, inputs, modules, outputs, providers, requirements, resources]
      --lockfile                    read .terraform.lock.hcl if exist (default true)
      --output-check                check if content of output file is up to date (default false)
      --output-file string          file path to insert output into (default "")
      --output-mode string          output to file method [inject, replace] (default "inject")
      --output-template string      output template (default "<!-- BEGIN_TF_DOCS -->\n{{ .Content }}\n<!-- END_TF_DOCS -->")
      --output-values               inject output values into outputs (default false)
      --output-values-from string   inject output values from file into outputs (default "")
      --recursive                   update submodules recursively (default false)
      --recursive-path string       submodules path to recursively update (default "modules")
      --show strings                show section [all, data-sources, footer, header, inputs, modules, outputs, providers, requirements, resources]
      --sort                        sort items (default true)
      --sort-by string              sort items by criteria [name, required, type] (default "name")
```


## Running Locally
### 1 - Build docker image

```console
$ docker build -t fac/terraform-autodocs .
```

### 2 - Running

To run this on a single target directory:
```console
$ docker run -it \
-v ${PWD}:/code/modules \
-e directories="example/s3-bucket/" \
fac/terraform-autodocs

----------------------------------
Generating Terraform Documentation
----------------------------------
Directories to be processed:
example/s3-bucket
 
Processing example/s3-bucket
INFO.md exists auto creating docs in README.md
Done
```

The defaults are defined within the `.terraform-docs.yml` file but can be overwritten using the `options` input:
```console
$ docker run -it \
-v ${PWD}:/code/modules \
-e directories="example/s3-bucket/" \
-e options="--hide requirements" \
fac/terraform-autodocs
```

## Authors
* FreeAgent Operations Team opensource@freeagent.com
## Licence

```
Copyright 2021 FreeAgent Central Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
