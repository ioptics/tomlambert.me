// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function()
{
  $('.wysiwyg').wysiwyg(
  {
   controls : {
     separator01 : { visible : false },
     separator03 : { visible : false },
     separator04 : { visible : false },
     separator05 : { visible : false },
     separator06 : { visible : false },
     separator07 : { visible : false },
     separator08 : { visible : false },
     separator09 : { visible : false },
     separator00 : { visible : false },
     insertOrderedList : { visible : true },
     insertUnorderedList : { visible : true },
     underline: { visible : true },
     html: { visible : true }
   }
  });
});