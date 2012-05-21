{def $slides=fetch( 'content', 'related_objects', hash('object_id', $node.object.id,
                    'attribute_identifier', 'impress_presentation/slides') ) }

<div class="fallback-message">
    {attribute_view_gui attribute=$node.data_map.fallback_message}
</div>

<div id="impress">
    {foreach $slides as $slide}
        {include uri='design:slide/slide.tpl' slide=$slide}
    {/foreach}
</div>

{if $node.data_map.hint.has_content}
    <div class="hint"> 
        {attribute_view_gui attribute=$node.data_map.hint}
    </div>
{/if}

{ezscript_require( array("impress.js") )}
<script>impress().init();</script> 