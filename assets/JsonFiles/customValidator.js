const hasValue = (data) => {

    if (["", null, false, undefined].includes(data)) {
        return false
    } else {
        return true
    }
}



export const validateField = (field, formValues, externalValidation, setValues) => {
    const errors = {}
    console.log(externalValidation)
    if (externalValidation.calculateCurrentGestational) {
        console.log("condition", formValues.usgDate && formValues.sampleCollectionDate &&
            (hasValue(formValues.gestationalAgeDays)) && (hasValue(formValues.gestationalAgeWeeks)))

        if (formValues.usgDate && formValues.sampleCollectionDate &&
            (hasValue(formValues.gestationalAgeDays)) && (hasValue(formValues.gestationalAgeWeeks))) {
            const diff = moment(formValues.sampleCollectionDate).diff(moment(formValues.usgDate), "days")
            let days = diff + formValues.gestationalAgeDays
            let weeks = formValues.gestationalAgeWeeks
            while (days > 6) {
                weeks = weeks + 1
                days = days - 7
            }
            while (days < 0) {
                days = days + 7
                weeks = weeks - 1
            }
            setValues.currentGestationalAgeDays = days
            setValues.currentGestationalAgeWeeks = weeks
        }
        if (hasValue(formValues.currentGestationalAgeDays) && (hasValue(formValues.currentGestationalAgeWeeks)) && externalValidation.validateGestation) {
            if (formValues.currentGestationalAgeWeeks > externalValidation.gestationalAgeEnd || formValues.currentGestationalAgeWeeks < externalValidation.gestationalAgeStart) {
                errors.currentGestationalAgeWeeks = "Weeks should be between " + parseInt(externalValidation.gestationalAgeStart) + " - " + parseInt(externalValidation.gestationalAgeEnd);
            }
            else if (!/^[0-9\b]+$/.test(formValues.currentGestationalAgeWeeks)) {
                errors.currentGestationalAgeWeeks = "Should only be numbers";
            }

            if (formValues.currentGestationalAgeWeeks == parseInt(externalValidation.gestationalAgeEnd)) {
                let endDay;
                try {
                    endDay = parseInt((externalValidation.gestationalAgeEnd + "").split(".")[1])
                } catch (e) {
                    endDay = 0
                }
                if (formValues.currentGestationalAgeDays > endDay || formValues.currentGestationalAgeDays < 0) {
                    errors.currentGestationalAgeDays = endDay == 0 ? "Days should be 0 only" + endDay : "Days should be between 0 - " + endDay;
                }
            }
        }

    }
    for (let i = 0; i < field.length; i++) {
        const validation = field[i].validation
        const value = formValues[field[i].name]
        const type = field[i].type
        const testType = field[i].testType
        const testTrimester = field[i].testTrimester

        const { minValue, maxValue, minLength, greaterThan, lessThan, greaterThanEqual, lessThanEqual, isRequiredIf, isRequiredIfValue, isRequired, isRequiredIfValueIsNot, nonMandatory, atLeastOne } = field[i].validationValue
        let shouldRun = true
        if (testType && !(externalValidation.testType == testType)) {
            shouldRun = false
        }
        if (testTrimester && !(externalValidation.testTrimester == testTrimester)) {
            shouldRun = false
        }
        if (validation.includes("isRequired")) {
            if (["", null, undefined, false].includes(value) && (shouldRun && !nonMandatory)) {
                if (externalValidation.isRequired) {
                    errors[field[i].name] = "Required"
                    continue
                }
            }
        }
        if (validation.includes("isRequiredIfValueIsNot")) {
            if ((formValues[isRequiredIfValueIsNot.name] != isRequiredIfValueIsNot.value) && (shouldRun && !nonMandatory)) {
                if (["", null, undefined, false].includes(value)) {
                    if (externalValidation.isRequired) {
                        errors[field[i].name] = "Required"
                        continue
                    }
                }
            }

        }

        if (validation.includes("isRequiredIfValue")) {

            if (formValues[isRequiredIfValue.name] == isRequiredIfValue.value && (shouldRun && !nonMandatory)) {
                if (["", null, undefined, false].includes(value)) {
                    if (externalValidation.isRequired) {
                        errors[field[i].name] = "Required"
                        continue
                    }
                }
            }
        }
        if (validation.includes("isRequiredIf")) {
            let shouldRun = true
            if (testType && !(externalValidation.testType == testType)) {
                shouldRun = false
            }
            if (testTrimester && !(externalValidation.testTrimester == testTrimester)) {
                shouldRun = false
            }
            if (!value && shouldRun && !nonMandatory) {
                if (externalValidation.isRequired) {
                    errors[field[i].name] = "Required"
                }
            }

        }
        if (validation.includes("atLeastOne") && hasValue(value)) {
            let isErr = true
            atLeastOne.name.map((single) => {
                if (!["", null, undefined, false].includes(formValues[single])) {
                    isErr = false
                }
            })
            if (isErr && shouldRun) {
                if (externalValidation.isRequired) {
                    errors[field[i].name] = "At Least one should be filled among " + atLeastOne.label.toString()
                }
            }
        }
        if (validation.includes("minLength")) {
            if (value.length < value && hasValue(value)) {
                errors[field[i].name] = "Length should be greater than " + minLength
                continue
            }
        }

        if (validation.includes("isFutureDate")) {
            let days = 0
            if (field[i].validationValue.futureDate) {
                days = 1
            }
            const diff = moment(moment().format("YYYY-MM-DD")).diff(formValues[field[i].name], "days")
            if (diff >= days && hasValue(value)) {
                errors[field[i].name] = `Date should be future ${days > 0 ? "or current" : ""} date`
                continue
            }
        }
        if (validation.includes("isPastDate")) {
            let days = 0
            if (field[i].validationValue.pastDate) {
                days = 1
            }
            const diff = moment(moment().format("YYYY-MM-DD")).diff(formValues[field[i].name], "days")
            if (diff < days && hasValue(value)) {
                errors[field[i].name] = `Date cant be future ${days > 0 ? "or current" : ""} date`
                continue
            }
        }
        if (validation.includes("minValue")) {

            if (type == "date" && hasValue(value)) {
                const diff = moment(moment().format("YYYY-MM-DD")).diff(formValues[field[i].name], minValue.type)
                if (Math.abs(diff) < minValue.value) {
                    errors[field[i].name] = `Date should be ${minValue.value < 0 ? "after" : "before"} or equal to   ${Math.abs(minValue.value)}  ${minValue.type} from   current date`
                    continue
                }
            } else if (value < field[i].validationValue.minValue && hasValue(value)) {
                errors[field[i].name] = "Value should be more than " + minValue
                continue
            }
        }
        if (validation.includes("maxValue")) {
            if (type == "date" && hasValue(value)) {
                const diff = moment(moment().format("YYYY-MM-DD")).diff(formValues[field[i].name], maxValue.type)
                if (Math.abs(diff) > maxValue.value) {
                    errors[field[i].name] = `Date should be ${maxValue.value < 0 ? "after" : "before"} or equal to   ${Math.abs(maxValue.value)}  ${maxValue.type} from   current date`
                    continue
                }
            } else if ((value > field[i].validationValue.maxValue) && hasValue(value)) {
                errors[field[i].name] = "Value should be less than " + maxValue
                continue
            }
        }
        if (validation.includes("greaterThanEqual")) {
            if (type == "date" && hasValue(value)) {
                let names = greaterThanEqual.name.split(",")
                let types = greaterThanEqual.type.split(",")
                let labels = greaterThanEqual.label.split(",")
                let err = null
                for (let j = 0; j < names.length; j++) {
                    if (formValues[names[j]]) {
                        const diff = moment(moment(formValues[field[i].name]).format("YYYY-MM-DD")).diff(formValues[names[j]], types[j])
                        if (diff < 0) {
                            err = true
                            errors[field[i].name] = field[i].title + "  should be greater than " + (labels[j])
                            break
                        }
                    }
                }
                if (err) {
                    continue
                }

            } else {
                let data = greaterThanEqual.name ? formValues[greaterThanEqual.name] : greaterThanEqual.value
                if (data && (value < data) && hasValue(value)) {
                    errors[field[i].name] = "Value should be less than or equal to " + (greaterThanEqual.label ? greaterThanEqual.label : greaterThanEqual)
                    continue
                }
            }
        }
        if (validation.includes("lessThanEqual")) {
            let data = lessThanEqual.name ? formValues[lessThanEqual.name] : lessThanEqual.value
            if (type == "date" && hasValue(value)) {
                const diff = moment(moment(formValues[field[i].name]).format("YYYY-MM-DD")).diff(moment(formValues[lessThanEqual.name]).format("YYYY-MM-DD"), lessThanEqual.type)
                if (diff < lessThanEqual.value) {
                    errors[field[i].name] = "Date should be after  " + (lessThanEqual.label ? lessThanEqual.label : lessThanEqual.value)
                    continue
                }
            } else if (data && (value > data) && hasValue(value)) {
                errors[field[i].name] = "Value should be less than or equal to " + (lessThanEqual.name ? lessThanEqual.name : lessThanEqual.value)
                continue
            }
        }
    }
    return { ...errors }

}


