{include uri='design:window_controls.tpl' }

{def $slides=fetch( 'content', 'related_objects',
                    hash( 'object_id', $node.object.id,
                    'all_relations', true(),
                    'attribute_identifier', 'slides' ) ) }


{foreach $slides as $slide}
    {include uri='design:slide/slide.tpl}
{/foreach}