{%  extends 'sos-doc' %}

{% import 'parts/doc_panel.tpl' as doc_panel %}
{% import 'parts/page_header.tpl' as page_header %}
{% import 'parts/toc_header.tpl' as toc_header %}
{% import 'parts/edit_button.tpl' as edit_button %}

{% block html_head %}

{{ super() }}

{{ page_header.css() }}
{{ toc_header.css() }}
{{ doc_panel.css('toc_panel') }}
{{ edit_button.css() }}

{% endblock html_head %}

{% block body %}

{# This HTML file adds a fixed header to the page. It also provides
  a toggle_caret and toc_panel to add a doc panel. #}

{{ page_header.html() }}
{{ edit_button.html() }}

{{ super() }}

{{ doc_panel.js('toggle_caret', 'toc_panel', '../../doc_index.html') }}
{{ edit_button.js() }}

{# We need to determine the master list. For sos documentation, the list
 is defined in ../../js/docs.js and we will need to decide which one to
 use according to the URL.
#}

<script src="../../js/docs.js"></script>
<script>
let url = window.location.pathname;
let dir = url.substring(url.lastIndexOf('/', url.lastIndexOf('/')-1)+1, url.lastIndexOf('/'));

if (dir == 'documentation') {
  all_docs = documentation;
} else if (dir == 'tutorials') {
  all_docs = tutorials;
} else {
  all_docs = guides;
}
</script>

{# The variable to use will be all_docs.
  1. name of the master list
  2. id of the notebook container.
#}
{{ toc_header.js('all_docs' , 'notebook-container') }}

{% endblock body %}

