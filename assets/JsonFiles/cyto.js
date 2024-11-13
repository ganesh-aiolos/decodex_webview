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
            name: "maternalAge",
            title: "Maternal Age",
            type: "number",
            validation: [
                "isRequired"
            ],
            validationValue: {},
            testType: "cytoPrenatal"
        },
        {
            name: "motherGeneticDisease",
            title: "Genetic Diseases in Mother",
            type: "text",
            validation: [
                "isRequired"
            ],
            validationValue: {},
            testType: "cytoPrenatal"
        },
        {
            name: "fatherGeneticDisease",
            title: "Genetic Diseases in Father",
            type: "text",
            validation: [
                "isRequired"
            ],
            validationValue: {},
            testType: "cytoPrenatal"
        },
        {
            name: "siblingGeneticDisease",
            title: "Genetic Diseases in siblings",
            type: "text",
            validation: [
                "isRequired"
            ],
            validationValue: {},
            testType: "cytoPrenatal"
        },
        {
            name: "maternalAge",
            title: "Maternal Age",
            type: "number",
            validation: [
                "isRequired"
            ],
            validationValue: {},
            testType: "cytoPrenatal"
        },
        {
            name: "consanguinity",
            title: "Consanguinity",
            type: "number",
            validation: [
                "isRequired"
            ],
            validationValue: {},
            testType: "cytoPrenatal"
        }
    ],
        name: "3"
}