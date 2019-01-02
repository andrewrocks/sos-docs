# SoS workflow examples

This is an archive of SoS workflow examples used in the SoS workflow system manuscript (Wang and Peng 2019).

Please follow instructions in the file
`Workflow_Manuscript_Examples.html` to reproduce the examples.
This document was exported from a notebook file, `Workflow_Manuscript_Examples.ipynb` 
(also found in this repository), via command 

```
sos convert Workflow_Manuscript_Examples.ipynb Workflow_Manuscript_Examples.html --template sos-cm-toc
```

(all notebook files under this repo can similarly be converted to HTML using `sos convert` command as demonstrated above)


The file is also available online at:

https://vatlab.github.io/sos-docs/doc/examples/Workflow_Manuscript_Examples.html

with source notebooks found at:

https://github.com/vatlab/sos-docs/tree/master/src/examples

The zenodo repo is a snapshot of these documents to accompany the SoS workflow manuscript.
For the most recent version of SoS workflow system implementation, please visit 

https://vatlab.github.io/sos-docs/#workflow_documentation

## Installing frozen release of SoS

Examples in the current repository is guaranteed to work with SoS version 0.18.0.
To install this particular version of SoS,

```
pip install -r requirements.txt
```

Though not guaranteed, future version of SoS are still likely to work with these examples. 
The goal of this repository is to reproduce results from Wang and Peng (2019). In practice
we generally recommend upgrading to the latest stable release of SoS.
