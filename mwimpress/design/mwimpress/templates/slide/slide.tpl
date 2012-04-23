{if $slide.data_map.content.has_content} 
    <li class="slide" id="" data-x="{$slide.data_map.data_x.content|wash()}" data-y="{$slide.data_map.data_y.content|wash()}" data_z="{$slide.data_map.data_z.content|wash()}" data-scale="{$slide.data_map.data_scale.content|wash()}" data-rotate-x="{$slide.data_map.data_rotate_x.content|wash()}" data-rotate-y="{$slide.data_map.data_rotate_y.content|wash()}" data-rotate-z="{$slide.data_map.data_rotate_z.content|wash()}">
        {attribute_view_gui attribute=$slide.data_map.content}
    </li>
{/if}