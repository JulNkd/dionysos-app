import flatpickr from "flatpickr";
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';

const initFlatpickr = () => {
  flatpickr(".range_start", {
    mode: "multiple",
    allowInput: true,
    enableTime: true,
    mode: "range",
    DefaultDate: "12:00",
    dateFormat: "d-m-Y H:i",
    minDate: "today",
    time_24hr: true,
    plugins: [new rangePlugin({ input: ".range_end"})]
    // maxDate: new Date().fp_incr(31),
    // inline: true,
  });
  flatpickr(".date_spending", {
    allowInput: true,
    dateFormat: "d-m-Y",
    minDate: "today"
  });
}
export { initFlatpickr };

// const initFlatpickrSpending = () => {

// }
// export { initFlatpickrSpending };
