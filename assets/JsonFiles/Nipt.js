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
            name: "ivfPregnancy",
            title: "IVF Pregnancy",
            type: "radio",
            show: true,
            validation: [
                "isRequired"
            ],
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
            validationValue: {}
        },
        {
            name: "eggUsed",
            title: "Egg Used",
            type: "radio",
            validation: [
                "isRequiredIfValue"
            ],
            options: [
                {
                    value: "Self",
                    label: "Self"
                },
                {
                    value: "Donor",
                    label: "Donor"
                }
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "ivfPregnancy",
                    value: "Yes"
                }
            }
        },
        {
            name: "ageAtEggRetrieval",
            title: "Age at egg retrieval",
            type: "number",
            validation: [
                "isRequiredIfValue"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "ivfPregnancy",
                    value: "Yes"
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
                    value: "Monochorionic"
                }
            }
        },
        {
            name: "dateOfTwinVanishOrReduced",
            type: "date",
            title: "Date on which the other twin had vanished/reduced",
            validation: [
                "isRequiredIfValue",
                "isPastDate"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "presentPregnancy",
                    value: "Vanishing Twin"
                }
            }
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
            name: "previousPregnancy",
            title: "Previous pregnancy",
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
            name: "prevPregDate",
            title: "Previous pregnancy date",
            type: "date",
            validation: [
                "isRequiredIfValue",
                "isPastDate"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "previousPregnancy",
                    value: "Yes"
                }
            }
        },
        {
            name: "spontaneousAbortion",
            title: "Spontaneous Abortion ?",
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
                    name: "previousPregnancy",
                    value: "Yes"
                }
            }
        },
        {
            name: "terminationPregnancy",
            title: "Termination of pregnancies ? ",
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
                    name: "previousPregnancy",
                    value: "Yes"
                }
            }
        },
        {
            name: "surrogate",
            title: "Surrogate",
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
        }
    ],
        name: "2",
  }