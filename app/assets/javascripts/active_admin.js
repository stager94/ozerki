//= require active_admin/base
//= require select2
var CKEDITOR_BASEPATH = '/assets/ckeditor/';
//= require ckeditor/ckeditor

function movieFormatResult(movie) {
	return movie.id
}

function movieFormatSelection(movie) {
	return movie.id
}

$(document).ready(function(){
	$('#infoline_new_id').select2({
		width: '700px',
		placeholder: 'Выберите необходимую новость',
		minimumInputLength: 1,
		ajax: {
			url: "/api/v1/news.json",
			dataType: 'json',
      data: function (term, page) {
      	return {
      		data: term
      	};
      },
      results: function (data, page) {
          return {results: data};
      }
    },
    formatResult: function (data) {
    	return "<div class='select2-user-result'>" + data.title + "</div>"
    },
    formatSelection: function (data) {
    	return data.title
    }
	});	
});

$(document).ready(function(){
  $('#infoline_page_id').select2({
    width: '700px',
    placeholder: 'Выберите необходимую страницу',
    minimumInputLength: 1,
    ajax: {
      url: "/api/v1/pages.json",
      dataType: 'json',
      data: function (term, page) {
        return {
          data: term
        };
      },
      results: function (data, page) {
          return {results: data};
      }
    },
    formatResult: function (data) {
      return "<div class='select2-user-result'>" + data.title + "</div>"
    },
    formatSelection: function (data) {
      return data.title
    }
  }); 
});