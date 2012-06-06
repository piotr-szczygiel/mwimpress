<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$site.http_equiv.Content-language|wash}" lang="{$site.http_equiv.Content-language|wash}">
<head>

{cache-block keys=array( $module_result.uri, $basket_is_empty, $current_user.contentobject_id, $extra_cache_key )}
    {def $pagedata         = ezpagedata()
        $pagestyle        = $pagedata.css_classes
        $locales          = fetch( 'content', 'translation_list' )
        $pagedesign       = $pagedata.template_look
        $current_node_id  = $pagedata.node_id}


    {include uri='design:page_head_style.tpl'}
    {include uri='design:page_head_script.tpl'}
{/cache-block}
</head>
<body>
    <div id="page">
        <!-- Main area: START -->
        {include uri='design:page_mainarea.tpl'}
        <!-- Main area: END -->
    </div>

{* This comment will be replaced with actual debug report (if debug is on). *}
<!--DEBUG_REPORT-->
</body>
</html>