import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const flatpickrInit = () => {
  // flatpickr(".datepicker", {
  //   altInput: true,
  //   allowInput: true

  // });
  flatpickr("#range_start", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})],
  plugins: [new rangePlugin({ input: "#secondRangeInput"})]

});
}

export { flatpickrInit };
