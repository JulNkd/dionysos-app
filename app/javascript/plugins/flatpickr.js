import flatpickr from "flatpickr";
const initFlatpickr = () => {
  flatpickr(".datepicker", {
    mode: "multiple",
    allowInput: true,
    enableTime: true,
    mode: "range",
    minTime: "12:00",
    // altInput: true,
    // altFormat: "F j, Y",
    dateFormat: "d-m-Y H:i",
    minDate: "today",
    time_24hr: true
    // enableTime: true,
    // altInput: true,
    // mode: "multiple",
    // altFormat: "F j, Y",
    // dateFormat: "d-m-Y H:i",
    // // conjunction: " au ",
    // minTime: "12:00",
    // minDate: "today",
    // maxDate: new Date().fp_incr(31),
    //
    // inline: true,
  });
}
export { initFlatpickr };
