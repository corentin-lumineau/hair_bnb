const clickModal = () => {
  const loc_button = document.getElementById("loc_button");
  if (!loc_button) return


  const queryString = window.location.search;
  const urlParams = new URLSearchParams(queryString);
  if (urlParams.get("retry") === "true") {
    loc_button.click();
    setTimeout(() => {
      alert('laes dates ne peuvent etre choise')
    }, 500)
  }
}





export { clickModal };


