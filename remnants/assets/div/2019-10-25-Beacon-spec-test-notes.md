#### Some notes about the specification tests

```
INFO: Testing version v101
INFO: *** Running tests from test_datasets
INFO: Testing test_two_datasets
	Test that both datasets repsond.
INFO: Open https://beacon.progenetix.org/query?
  referenceName=22
  referenceBases=TG
  assemblyId=GRCh38
  start=16577043
  end=16577045
  includeDatasetResponses=HIT
  variantType=SNP
```

* missing the "alternateBases" parameter; this is ambiguous, since it depends on 
the correct translation of "SNP", which is NOT a required value in VCF and 
therefore NOT a required variantType annotation!
* correct use is "alternateBases=N"
* variantType is not used for precise sequence annotations
* end is not needed/used
* (We now create the "alternateBases=N" parameter, resulting in a successful
match; but this is procedural and NOT in spec.)

```
INFO: Testing no_refbases
	Check that queries without referenceBases is not allowed.
INFO: Open https://beacon.progenetix.org/query?
  referenceName=22
  alternateBases=N
  assemblyId=GRCh38
  start=0
  end=2
  includeDatasetResponses=HIT
  datasetIds=GRCh38%3Abeacon_test%3A2030-01-01
```
  
This is correct; but the minimum use of a single "N" for structural or wildcard 
queries as per spec is ambiguous, since the query with "referenceBases=N"can be 
interpreted as requiring "any `referenceBases` value of length 1", and would not
match e.g. "referenceBases=CG".
* TODO: Work on specification.


```
INFO: Testing start_and_startMin
	Check that you cannot use start and startMin+startMax.
INFO: Open https://beacon.progenetix.org/query?
  referenceName=22
  referenceBases=A
  alternateBases=N
  assemblyId=GRCh38
  start=0
  end=2
  includeDatasetResponses=HIT
  datasetIds=GRCh38%3Abeacon_test%3A2030-01-01
  startMin=17301520
  startMax=17301530
  endMin=17301536
  endMax=17301536
```

This is probably the correct way to do it; however, we just derive the start 
interval from interpolating all of `start`, `startMin`, `startMax` into an
internal `start_range` array, and don't fail on this... Same for end.

```
INFO: Testing test_snp
	Test variantType SNP.
INFO: Open https://beacon.progenetix.org/query?
  referenceName=22
  referenceBases=C
  assemblyId=GRCh38
  start=17302971
  end=17302972
  includeDatasetResponses=HIT
  datasetIds=GRCh38%3Abeacon_test%3A2030-01-01
  variantType=SNP
```

* See above why this is not correct.

```
INFO: Testing test_bad_end
	Test querying with a bad end position.
INFO: Open https://beacon.progenetix.org/query?
  referenceName=22
  referenceBases=A
  alternateBases=G
  assemblyId=GRCh38
  start=17300407
  end=17300409
  includeDatasetResponses=HIT
  datasetIds=GRCh38%3Abeacon_test%3A2030-01-01
```

* The `end` parameter should be ignored when `referenceBases` and 
`alternateBases` exist. This seems appropriate - otherwise one has to check for 
a calculated `end` position.
* TODO: Document the limitation of `end` use to range matches and precise SVs.

```
INFO: Testing test_end
	Test the same query as `test_bad_end()` but with the correct end position.
INFO: Open https://beacon.progenetix.org/query?
  referenceName=22
  referenceBases=A
  alternateBases=G
  assemblyId=GRCh38
  start=17300407
  end=17300408
  includeDatasetResponses=HIT
  datasetIds=GRCh38%3Abeacon_test%3A2030-01-01
```

* As above; end should be ignored.

```
INFO: Testing test_insertion
	Test variantTypes INS.
INFO: Open https://beacon.progenetix.org/query?
  referenceName=22
  referenceBases=A
  assemblyId=GRCh38
  start=16064512
  end=16064513
  includeDatasetResponses=HIT
  datasetIds=GRCh38%3Abeacon_test%3A2030-01-01
  variantType=INS
```

This may be a correct use, but is not really documented in the spec. This would 
be considered a wildcard query, not a structural one, at a precise position.
* TODO:
   - document use
   - (Beacon+ implementation)
   
```
INFO: Testing test_deletion
	Test variantTypes DEL.
INFO: Open https://beacon.progenetix.org/query?
  referenceName=22
  referenceBases=GACAA
  assemblyId=GRCh38
  startMin=16517679
  startMax=16517680
  endMin=16517684
  endMax=16517684
  includeDatasetResponses=HIT
  datasetIds=GRCh38%3Abeacon_test%3A2030-01-01
  variantType=DEL
```

* TODO:
    - (Beacon+ check query interpolation for having both `referenceBases` and
    `variantType`...)

```
INFO: Testing test_deletion_2
	Test variantTypes DEL with startMin/startMax.
INFO: Open https://beacon.progenetix.org/query?
  referenceName=22
  referenceBases=ATACATAGTC
  assemblyId=GRCh38
  includeDatasetResponses=HIT
  datasetIds=GRCh38%3Abeacon_test%3A2030-01-01
  startMin=17301520
  startMax=17301530
  endMin=17301535
  endMax=17301536
  variantType=DEL
```

* TODO:
    - (Beacon+ check query interpolation for having both `referenceBases` and
    `variantType`...)

```
INFO: Testing test_snp_mnp
	Test representation of TG->AG and multiple variations from one vcf line.
INFO: Open https://beacon.progenetix.org/query?
  referenceName=22
  referenceBases=TG
  assemblyId=GRCh38
  start=16577043
  end=16577045
  includeDatasetResponses=HIT
  datasetIds=GRCh38%3Abeacon_test%3A2030-01-01
  variantType=SNP
```

As above, "SNP" use for wildcard searches? This is not documented (i.e. no 
required use of explicit variant type "SNP").
