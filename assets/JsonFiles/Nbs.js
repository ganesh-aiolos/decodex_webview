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
                "greaterThanEqual"
            ],
            validationValue: {
                greaterThanEqual: {
                    label: "Patient's date of birth,First Feeding date",
                    name: "dateOfBirth,firstFeedingDate",
                    type: "days,days"
                }
            }
        },
        {
            name: "firstFeedingDate",
            title: "First Feeding Date",
            type: "date",
            show: true,
            validation: [
                "isRequired",
                "isPastDate",
                "greaterThanEqual"
            ],
            validationValue: {
                greaterThanEqual: {
                    type: "days",
                    name: "dateOfBirth",
                    label: "Patient's Date of birth"
                }
            }
        },
        {
            name: "hoTransfusion",
            title: "History of HO Transfusion",
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
            name: "dateOfHoTransfusion",
            title: "Date of HO Transfusion",
            type: "date",
            validation: [
                "isRequiredIfValue",
                "isPastDate"
            ],
            validationValue: {
                isRequiredIfValue: {
                    name: "hoTransfusion",
                    value: "Yes"
                }
            }
        },
        {
            name: "additionalSymptoms",
            title: "Additional Symptom/History",
            type: "text",
            validation: [],
            validationValue: {}
        },
        {
            name: "typeOfFeeding",
            title: "Type of Feeding",
            type: "dropDown",
            validation: [
                "isRequired"
            ],
            validationValue: {},
            options: [
                {
                    value: "Breast",
                    label: "Breast"
                },
                {
                    value: "TPN",
                    label: "TPN"
                },
                {
                    value: "Formula",
                    label: "Formula"
                },
                {
                    value: "Formula Trade Name",
                    label: "Formula Trade Name"
                }
            ]
        },
        {
            name: "deliveryStatus",
            title: "Delivery Status",
            type: "dropDown",
            validation: [
                "isRequired"
            ],
            validationValue: {},
            options: [
                {
                    value: "Normal",
                    label: "Normal"
                },
                {
                    value: "Premature",
                    label: "Premature"
                },
                {
                    value: "Sick",
                    label: "Sick"
                },
                {
                    value: "On antibiotics",
                    label: "On antibiotics"
                }
            ]
        }
    ],
        name: "4",
  
  }