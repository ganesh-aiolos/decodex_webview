{
    flow: [
        {
            name: "sampleCollectionDate",
            title: "Sample Collection Date",
            type: "date",
            show: true,
            validation: [
                "isRequired",
                "isPastDate",
                "maxValue"
            ],
            validationValue: {
                maxValue: {
                    type: "days",
                    value: 10
                }
            }
        },
        {
            name: "usgDate",
            title: "USG Date",
            type: "date",
            show: true,
            validation: [
                "isRequired",
                "isPastDate"
            ],
            validationValue: {
                greaterThanEqual: {
                    type: "days",
                    label: "Sample Collection Date",
                    name: "sampleCollectionDate"
                }
            }
        },
        {
            name: "gestationalAgeWeeks",
            title: "Gestational Age Weeks",
            type: "number",
            show: true,
            validation: [
                "isRequired"
            ],
            validationValue: {}
        },
        {
            name: "gestationalAgeDays",
            title: "Gestational Age Days",
            type: "number",
            show: true,
            validation: [
                "isRequired"
            ],
            validationValue: {}
        },
        {
            name: "currentGestationalAgeWeeks",
            title: "Current Gestational Age Week",
            type: "number",
            validation: [
                "isDisabled"
            ],
            validationValue: {
                isDisabled: {
                    name: "disabledField"
                }
            }
        },
        {
            name: "currentGestationalAgeDays",
            title: "Current Gestational Age Days",
            type: "number",
            validation: [
                "isDisabled"
            ],
            validationValue: {
                isDisabled: {
                    name: "disabledField"
                }
            }
        },
        {
            name: "fmfId",
            title: "FMF ID",
            type: "number",
            validation: [],
            validationValue: {}
        },
        {
            name: "Gravida",
            title: "Gravida",
            type: "number",
            show: true,
            validation: [],
            validationValue: {}
        },
        {
            name: "Live",
            title: "Live",
            show: true,
            type: "number",
            validation: [
                "isDisabled"
            ],
            validationValue: {
                isDisabled: {
                    name: "Gravida"
                }
            }
        },
        {
            name: "Abortion",
            title: "Abortion",
            show: true,
            type: "number",
            validation: [
                "lessThanEqual",
                "maxValue",
                "minValue"
            ],
            validationValue: {
                lessThanEqual: {
                    name: "Gravida",
                    label: "Gravida"
                },
                maxValue: 21,
                minValue: 0
            }
        },
        {
            name: "Para",
            title: "Para",
            show: true,
            type: "number",
            validation: [
                "lessThanEqual",
                "isDisabled"
            ],
            validationValue: {
                lessThanEqual: {
                    name: "Gravida",
                    label: "Gravida"
                },
                isDisabled: {
                    name: "Gravida"
                }
            }
        },
        {
            name: "bleedingOrSpottingTwoWeeks",
            title: "Bleeding/Spotting in last two weeks",
            type: "radio",
            options: [
                {
                    value: "Yes",
                    label: "Yes"
                },
                {
                    value: "No",
                    label: "No"
                }
            ],
            validation: [],
            validationValue: {}
        },
        {
            name: "lmpCertainity",
            title: "LMP Certainity",
            type: "radio",
            options: [
                {
                    value: "Regular",
                    label: "Regular"
                },
                {
                    value: "Irregular",
                    label: "Irregular"
                },
                {
                    value: "Unknown",
                    label: "Unknown"
                }
            ],
            validation: [],
            validationValue: {}
        },
        {
            name: "lmpDate",
            title: "LMP Date",
            show: true,
            type: "date",
            validation: [
                "isRequired",
                "isPastDate",
                "minValue"
            ],
            validationValue: {
                minValue: {
                    type: "days",
                    value: 35
                }
            }
        },
        {
            name: "usgCorrEddDate",
            title: "USG Corr Date",
            type: "date",
            show: true,
            validation: [
                "isRequired",
                "isFutureDate"
            ],
            validationValue: {}
        },
        {
            name: "historyOfDownSyndrome",
            title: "History of Down Syndrome",
            show: true,
            type: "radio",
            options: [
                {
                    value: "Yes",
                    label: "Yes"
                },
                {
                    value: "No",
                    label: "No"
                }
            ],
            validation: [],
            validationValue: {}
        },
        {
            name: "confirmatoryTestHDS",
            title: "Confirmatory Test Of History of Down Syndrome",
            type: "radio",
            options: [
                {
                    value: "Yes",
                    label: "Yes"
                },
                {
                    value: "No",
                    label: "No"
                }
            ],
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "historyOfDownSyndrome",
                    value: "Yes",
                    showIfTrue: true
                }
            }
        },
        {
            name: "message",
            type: "message",
            message: "We will not consider previous history of down syndrome for risk assessment",
            validation: [],
            validationValue: {
                showMessageIf: {
                    name: "historyOfDownSyndrome,confirmatoryTestHDS",
                    value: "Yes,No"
                }
            }
        },
        {
            name: "historyOfEdwardsSyndrome",
            title: "History of Edward Syndrome",
            show: true,
            type: "radio",
            options: [
                {
                    value: "Yes",
                    label: "Yes"
                },
                {
                    value: "No",
                    label: "No"
                }
            ],
            validation: [],
            validationValue: {}
        },
        {
            name: "confirmatoryTestHES",
            title: "Confirmatory Test Of History of Edward Syndrome",
            type: "radio",
            options: [
                {
                    value: "Yes",
                    label: "Yes"
                },
                {
                    value: "No",
                    label: "No"
                }
            ],
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "historyOfEdwardsSyndrome",
                    value: "Yes",
                    showIfTrue: true
                }
            }
        },
        {
            name: "message",
            type: "message",
            message: "We will not consider previous history of Edward syndrome for risk assessment",
            validation: [],
            validationValue: {
                showMessageIf: {
                    name: "historyOfEdwardSyndrome,confirmatoryTestHES",
                    value: "Yes,No"
                }
            }
        },
        {
            name: "historyOfPatauSyndrome",
            title: "History of Patau Syndrome",
            type: "radio",
            show: true,
            options: [
                {
                    value: "Yes",
                    label: "Yes"
                },
                {
                    value: "No",
                    label: "No"
                }
            ],
            validation: [],
            validationValue: {}
        },
        {
            name: "confirmatoryTestHPS",
            title: "Confirmatory Test Of History of Patau Syndrome",
            type: "radio",
            options: [
                {
                    value: "Yes",
                    label: "Yes"
                },
                {
                    value: "No",
                    label: "No"
                }
            ],
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "historyOfPatauSyndrome",
                    value: "Yes"
                }
            }
        },
        {
            name: "message",
            type: "message",
            message: "We will not consider previous history of Patau syndrome for risk assessment",
            validation: [],
            validationValue: {
                showMessageIf: {
                    name: "historyOfPatauSyndrome,confirmatoryTestHPS",
                    value: "Yes,No"
                }
            }
        },
        {
            name: "diabetesInsulinDependent",
            title: "Diabetes Status (Insulin Dependent)",
            type: "radio",
            options: [
                {
                    value: "Yes",
                    label: "Yes"
                },
                {
                    value: "No",
                    label: "No"
                }
            ],
            validation: [
                "isRequired"
            ],
            validationValue: {}
        },
        {
            name: "diabetesInsulinDependent",
            title: "Diabetes Status (Insulin Dependent)",
            type: "radio",
            options: [
                {
                    value: "Pre-Diabetic(Insulin started before pregnancy)",
                    label: "Pre-Diabetic(Insulin started before pregnancy)"
                },
                {
                    value: "Gestational Diabetes(Insulin started after pregnancy)",
                    label: "Gestational Diabetes(Insulin started after pregnancy)"
                }
            ],
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "diabetesInsulinDependent",
                    value: "Yes"
                }
            },
            alignmentType: "single"
        },
        {
            name: "patientOnHcg",
            title: "Patient On HCG",
            show: true,
            type: "radio",
            options: [
                {
                    value: "Yes",
                    label: "Yes"
                },
                {
                    value: "No",
                    label: "No"
                }
            ],
            validation: [
                "isRequired"
            ],
            validationValue: {}
        },
        {
            name: "message",
            type: "message",
            message: "Sample should be collected after 48-72 hours of last hCG injection. If hCG injection is already administered, wait for 48-72 hours before withdrawing blood for test.",
            validation: [],
            validationValue: {
                showMessageIf: {
                    name: "patientOnHcg",
                    value: "Yes"
                }
            }
        },
        {
            name: "typeOfConception",
            title: "Type of Conception",
            show: true,
            type: "radio",
            options: [
                {
                    value: "Natural",
                    label: "Natural"
                },
                {
                    value: "Assisted",
                    label: "Assisted"
                },
                {
                    value: "Ovulation drugs",
                    label: "Ovulation drugs"
                },
                {
                    value: "IUI",
                    label: "IUI"
                }
            ],
            validation: [
                "isRequired"
            ],
            validationValue: {}
        },
        {
            name: "typeOfProcedure",
            type: "radio",
            title: "Type Of Procedure",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "typeOfConception",
                    value: "Assisted",
                    showIfTrue: true
                }
            },
            options: [
                {
                    value: "Self IVF",
                    label: "Self IVF"
                },
                {
                    value: "Self ICSI",
                    label: "Self ICSI"
                },
                {
                    value: "Donor Egg",
                    label: "Donor Egg"
                }
            ]
        },
        {
            name: "donorDob",
            title: "Donor Date of Birth",
            type: "date",
            validation: [
                "isRequiredIfValue",
                "isPastDate",
                "minValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "typeOfProcedure",
                    value: "Donor Egg",
                    showIfTrue: true
                },
                minValue: {
                    type: "years",
                    value: 18,
                    label: "18"
                }
            }
        },
        {
            name: "extractionDate",
            title: "Extraction Date",
            type: "date",
            validation: [
                "isRequiredIfValue",
                "isPastDate"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "typeOfConception",
                    value: "Assisted",
                    showIfTrue: true
                }
            }
        },
        {
            name: "transferDate",
            title: "Transfer Date",
            type: "date",
            validation: [
                "isRequiredIfValue",
                "lessThanEqual",
                "isPastDate"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "typeOfConception",
                    value: "Assisted",
                    showIfTrue: true
                },
                lessThanEqual: {
                    name: "extractionDate",
                    value: 0,
                    label: "Extraction Date",
                    type: "days"
                }
            }
        },
        {
            name: "presentPregnancy",
            title: "Present Pregnancy",
            type: "radio",
            show: true,
            validation: [
                "isRequired"
            ],
            options: [
                {
                    value: "Singleton",
                    label: "Singleton"
                },
                {
                    value: "Twins",
                    label: "Twins"
                },
                {
                    value: "Vanishing Twin",
                    label: "Vanishing Twin"
                }
            ],
            validationValue: {},
            newRow: true
        },
        {
            name: "twinType",
            title: "Twin Type",
            type: "radio",
            options: [
                {
                    value: "Dichorionic",
                    label: "Dichorionic"
                },
                {
                    value: "Monochorionic",
                    label: "Monochorionic"
                }
            ],
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "presentPregnancy",
                    value: "Twins"
                }
            }
        },
        {
            name: "monochorionicType",
            title: "Monochorionic Type",
            type: "radio",
            options: [
                {
                    value: "MCDA",
                    label: "MCDA"
                },
                {
                    value: "MCMA",
                    label: "MCMA"
                }
            ],
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "twinType",
                    value: "Monochorionic",
                    showIfTrue: true
                }
            }
        },
        {
            name: "crl",
            title: "CRL",
            type: "number",
            validation: [
                "isRequiredIfValueIsNot",
                "minValue",
                "maxValue"
            ],
            validationValue: {
                isRequiredIfValueIsNot: {
                    name: "presentPregnancy",
                    value: "Twins",
                    showIfTrue: true
                },
                minValue: 0,
                maxValue: 85
            },
            testTrimester: "First"
        },
        {
            name: "nt",
            title: "NT",
            type: "number",
            validation: [
                "isRequiredIfValueIsNot",
                "maxValue",
                "minValue"
            ],
            validationValue: {
                nonMandatory: true,
                isRequiredIfValueIsNot: {
                    name: "presentPregnancy",
                    value: "Twins",
                    showIfTrue: true
                },
                minValue: 0,
                maxValue: 85
            },
            testTrimester: "First"
        },
        {
            name: "twinCrl1",
            title: "Twin-1: CRL (in mm)",
            type: "number",
            validation: [
                "isRequiredIfValue",
                "minValue",
                "maxValue"
            ],
            validationValue: {
                nonMandatory: true,
                isRequiredIfValue: {
                    name: "presentPregnancy",
                    value: "Twins",
                    showIfTrue: true
                },
                minValue: 0,
                maxValue: 85
            }
        },
        {
            name: "twinNt1",
            title: "Twin-1: NT (in mm)",
            type: "number",
            validation: [
                "isRequiredIfValue",
                "maxValue",
                "minValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "presentPregnancy",
                    value: "Twins",
                    showIfTrue: true
                },
                minValue: 0,
                maxValue: 85
            }
        },
        {
            name: "twinCrl2",
            title: "Twin-2: CRL (in mm)",
            type: "number",
            validation: [
                "isRequiredIfValue",
                "minValue",
                "maxValue"
            ],
            validationValue: {
                nonMandatory: true,
                isRequiredIfValue: {
                    name: "presentPregnancy",
                    value: "Twins",
                    showIfTrue: true
                },
                minValue: 0,
                maxValue: 85
            }
        },
        {
            name: "twinNt2",
            title: "Twin-2: NT (in mm)",
            type: "number",
            validation: [
                "isRequiredIfValue",
                "maxValue",
                "minValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "presentPregnancy",
                    value: "Twins",
                    showIfTrue: true
                },
                minValue: 0,
                maxValue: 85
            }
        },
        {
            name: "nb",
            title: "NB",
            type: "radio",
            options: [
                {
                    value: "Present",
                    label: "Present"
                },
                {
                    value: "Absent",
                    label: "Absent"
                }
            ],
            validation: [
                "isRequiredIfValueIsNot"
            ],
            validationValue: {
                nonMandatory: true,
                isRequiredIfValueIsNot: {
                    name: "presentPregnancy",
                    value: "Twins"
                }
            }
        },
        {
            name: "twinNb1",
            title: "Twin-1: NB",
            type: "radio",
            options: [
                {
                    value: "Present",
                    label: "Present"
                },
                {
                    value: "Absent",
                    label: "Absent"
                }
            ],
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                nonMandatory: true,
                isRequiredIfValue: {
                    name: "presentPregnancy",
                    value: "Twins"
                }
            }
        },
        {
            name: "twinNb2",
            title: "Twin-2: NB",
            type: "radio",
            options: [
                {
                    value: "Present",
                    label: "Present"
                },
                {
                    value: "Absent",
                    label: "Absent"
                }
            ],
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                nonMandatory: true,
                isRequiredIfValue: {
                    name: "presentPregnancy",
                    value: "Twins"
                }
            }
        },
        {
            name: "crl",
            title: "CRL (in mm)",
            type: "number",
            validation: [
                "atLeastOne",
                "minValue",
                "maxValue"
            ],
            validationValue: {
                atLeastOne: {
                    name: [
                        "bpd",
                        "crl",
                        "fl",
                        "hc"
                    ],
                    label: [
                        "BPD",
                        "CRL",
                        "FL",
                        "HC"
                    ]
                },
                minValue: 0,
                maxValue: 85
            },
            testTrimester: "Second"
        },
        {
            name: "bpd",
            title: "BPD (in mm)",
            type: "number",
            validation: [
                "atLeastOne",
                "minValue",
                "maxValue"
            ],
            validationValue: {
                atLeastOne: {
                    name: [
                        "bpd",
                        "crl",
                        "fl",
                        "hc"
                    ],
                    label: [
                        "BPD",
                        "CRL",
                        "FL",
                        "HC"
                    ]
                }
            },
            testTrimester: "Second"
        },
        {
            name: "fl",
            title: "FL (in mm)",
            type: "number",
            validation: [
                "atLeastOne",
                "minValue",
                "maxValue"
            ],
            validationValue: {
                atLeastOne: {
                    name: [
                        "bpd",
                        "crl",
                        "fl",
                        "hc"
                    ],
                    label: [
                        "BPD",
                        "CRL",
                        "FL",
                        "HC"
                    ]
                }
            },
            testTrimester: "Second"
        },
        {
            name: "hc",
            title: "HC (in mm)",
            type: "number",
            validation: [
                "atLeastOne",
                "minValue",
                "maxValue"
            ],
            validationValue: {
                atLeastOne: {
                    name: [
                        "bpd",
                        "crl",
                        "fl",
                        "hc"
                    ],
                    label: [
                        "BPD",
                        "CRL",
                        "FL",
                        "HC"
                    ]
                }
            },
            testTrimester: "Second"
        },
        {
            name: "bpOrMp",
            title: "BP or MAP",
            type: "radio",
            options: [
                {
                    value: "MAP",
                    label: "MAP"
                },
                {
                    value: "BP",
                    label: "BP"
                }
            ],
            validation: [
                "isRequired"
            ],
            validationValue: {},
            testType: "preEclampsia"
        },
        {
            name: "bpMeasurementDate",
            title: "BP measurement Date",
            type: "date",
            validation: [
                "isRequiredIfValue",
                "isPastDate",
                "maxValue"
            ],
            validationValue: {
                maxValue: {
                    value: 0,
                    type: "days"
                },
                isRequiredIfValue: {
                    name: "bpOrMp",
                    value: "BP"
                }
            }
        },
        {
            name: "bpLeftSystolic1",
            title: "BP Left Arm - Systolic Reading 1",
            type: "number",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "bpOrMp",
                    value: "BP"
                }
            }
        },
        {
            name: "bpLeftDiSystolic1",
            title: "BP Left Arm - Diastolic Reading 1",
            type: "number",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "bpOrMp",
                    value: "BP"
                }
            }
        },
        {
            name: "bpLeftSystolic2",
            title: "BP Left Arm - Systolic Reading 2",
            type: "number",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "bpOrMp",
                    value: "BP"
                }
            }
        },
        {
            name: "bpLeftDiSystolic2",
            title: "BP Left Arm - Diastolic Reading 2",
            type: "number",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "bpOrMp",
                    value: "BP"
                }
            }
        },
        {
            name: "bpRightSystolic1",
            title: "BP Right Arm - Systolic Reading 1",
            type: "number",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "bpOrMp",
                    value: "BP"
                }
            }
        },
        {
            name: "bpRightDiSystolic1",
            title: " BP Right Arm - Diastolic Reading 1",
            type: "number",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "bpOrMp",
                    value: "BP"
                }
            }
        },
        {
            title: "BP Right Arm - Systolic Reading 2",
            name: "bpRightSystolic2",
            type: "number",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "bpOrMp",
                    value: "BP"
                }
            }
        },
        {
            title: " BP Right Arm - Diastolic Reading 2",
            name: "bpRightDiSystolic2",
            type: "number",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "bpOrMp",
                    value: "BP"
                }
            }
        },
        {
            name: "mapReading1",
            title: "Map Reading-1",
            type: "number",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "bpOrMp",
                    value: "MAP"
                }
            }
        },
        {
            name: "mapReading2",
            title: "Map Reading-2",
            type: "number",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "bpOrMp",
                    value: "MAP"
                }
            }
        },
        {
            name: "familyHistoryPreEclampsia",
            title: "Family History of Pre-eclampsia",
            type: "dropDown",
            validation: [
                "isRequired"
            ],
            testType: "preEclampsia",
            validationValue: {},
            options: [
                {
                    value: "Not Known",
                    label: "Not Known"
                },
                {
                    value: "Not Present",
                    label: "Not Present"
                },
                {
                    value: "Patient",
                    label: "Patient"
                },
                {
                    value: "Mother",
                    label: "Mother"
                }
            ]
        },
        {
            name: "chronicHypertension",
            title: "Chronic Hypertension",
            type: "dropDown",
            validation: [
                "isRequired"
            ],
            testType: "preEclampsia",
            validationValue: {},
            options: [
                {
                    value: "Not Known",
                    label: "Not Known"
                },
                {
                    value: "Not Present",
                    label: "Not Present"
                },
                {
                    value: "Medication",
                    label: "Medication"
                },
                {
                    value: "Untreated",
                    label: "Untreated"
                }
            ]
        },
        {
            name: "uterineArteryPulsativeIndexRightPI",
            title: "Uterine Artery Pulsative Index - Right PI",
            validation: [
                "isRequired",
                "maxValue",
                "minValue"
            ],
            validationValue: {
                maxValue: 100,
                minValue: 1
            },
            testType: "preEclampsia",
            type: "number"
        },
        {
            name: "uterineArteryPulsativeIndexLeftPI",
            title: "Uterine Artery Pulsative Index - Left PI",
            validation: [
                "isRequired",
                "maxValue",
                "minValue"
            ],
            validationValue: {
                maxValue: 100,
                minValue: 1
            },
            testType: "preEclampsia",
            type: "number"
        }
    ],
        name: "1",
}
