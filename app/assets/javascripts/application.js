// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function()
{
  var options = {
    placeholderCss: {'background-color': '#ff8'},
    hintCss: {'background-color':'#bbf'},
        onChange: function( cEl )
        {
            console.log( 'onChange' );
        },
        complete: function( cEl )
        {
            console.log( 'complete' );
        },
    isAllowed: function( cEl, hint, target )
    {
      // Be carefull if you test some ul/ol elements here.
      // Sometimes ul/ols are dynamically generated and so they have not some attributes as natural ul/ols.
      // Be careful also if the hint is not visible. It has only display none so it is at the previouse place where it was before(excluding first moves before showing).
      if(hint.parents('li').first().data('module') === 'c' && cEl.data('module') !== 'c')
      {
        hint.css('background-color', '#ff9999');
        return false;
      }
      else
      {
        hint.css('background-color', '#99ff99');
        return true;
      }
    },
    opener: {
       active: true,
       close: '/assets/Remove2.png',
       open: '/assets/Add2.png',
       
       openerCss: {
         'display': 'inline-block',
         'width': '18px',
         'height': '18px',
         'float': 'left',
         'margin-left': '-35px',
         'margin-right': '5px',
         'background-position': 'center center',
         'background-repeat': 'no-repeat'
       },
       openerClass: ''
    },
    ignoreClass: 'clickable'
  };

  $('#sTree2, #sTree').sortableLists(options);

  $('#toArrBtn').on('click', function(){ console.log($('#sTree2').sortableListsToArray()); });
  $('#toHierBtn').on('click', function() { console.log($('#sTree2').sortableListsToHierarchy()); });
  $('#toStrBtn').on('click', function() { console.log($('#sTree2').sortableListsToString()); });
  $('.descPicture').on('click', function(e) { $(this).toggleClass('descPictureClose'); });

  $('.clickable').on('click', function(e) { alert('Click works fine! IgnoreClass stops onDragStart event.'); });

  /* Scrolling anchors */
  $('#toPictureAnch').on('click', function(e) { scrollToAnch('pictureAnch'); });
  $('#toBaseElementAnch').on('click', function(e) { scrollToAnch('baseElementAnch'); });
  $('#toBaseElementAnch2').on('click', function(e) { scrollToAnch('baseElementAnch'); });
  $('#toCssPatternAnch').on('click', function(e) { scrollToAnch('cssPatternAnch'); });

  function scrollToAnch(id)
  {
    $('html, body').animate({
      scrollTop: $("#" + id).offset().top
    }, 750);
    return false;
  }

});
