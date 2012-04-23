<div class="fallback-message">
    {attribute_view_gui attribute=$node.data_map.fallback_message}
</div>

{def $slides=fetch( 'content', 'related_objects',
                    hash( 'object_id', $node.object.id,
                    'all_relations', true(),
                    'attribute_identifier', 'slides' ) ) }


{foreach $slides as $slide}
    {include uri='design:slide/slide.tpl' slide=$slide}
{/foreach}

