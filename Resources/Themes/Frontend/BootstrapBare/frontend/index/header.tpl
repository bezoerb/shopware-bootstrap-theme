<head>
    {*! Http-Tags *}
    {block name="frontend_index_header_meta_http_tags"}
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        {* The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags *}
    {/block}

    {*! Meta-Tags *}
    {block name='frontend_index_header_meta_tags'}
        <meta name="author" content="{s name='IndexMetaAuthor'}{/s}"/>
        <meta name="copyright" content="{s name='IndexMetaCopyright'}{/s}"/>
        <meta name="robots" content="{block name='frontend_index_header_meta_robots'}{s name='IndexMetaRobots'}{/s}{/block}"/>
        <meta name="revisit-after" content="{s name='IndexMetaRevisit'}{/s}"/>
        <meta name="keywords" content="{block name='frontend_index_header_meta_keywords'}{if $sCategoryContent.metaKeywords}{$sCategoryContent.metaKeywords|escapeHtml}{else}{s name='IndexMetaKeywordsStandard'}{/s}{/if}{/block}" />
        <meta name="description" content="{block name='frontend_index_header_meta_description'}{s name='IndexMetaDescriptionStandard'}{/s}{/block}"/>

        {* Meta opengraph tags *}
        {block name='frontend_index_header_meta_tags_opengraph'}
            <meta property="og:type" content="website" />
            <meta property="og:site_name" content="{{config name=sShopname}|escapeHtml}" />
            <meta property="og:title" content="{{config name=sShopname}|escapeHtml}" />
            <meta property="og:description" content="{s name='IndexMetaDescriptionStandard'}{/s}" />
            <meta property="og:image" content="{link file=$theme.desktopLogo fullPath}" />

            <meta name="twitter:card" content="website" />
            <meta name="twitter:site" content="{{config name=sShopname}|escapeHtml}" />
            <meta name="twitter:title" content="{{config name=sShopname}|escapeHtml}" />
            <meta name="twitter:description" content="{s name='IndexMetaDescriptionStandard'}{/s}" />
            <meta name="twitter:image" content="{link file=$theme.desktopLogo fullPath}" />
        {/block}

        {block name='frontend_index_header_meta_tags_schema_webpage'}
            <meta itemprop="copyrightHolder" content="{{config name=sShopname}|escapeHtml}" />
            <meta itemprop="copyrightYear" content="{s name='IndexMetaCopyrightYear'}{/s}" />
            <meta itemprop="isFamilyFriendly" content="{if {config name=metaIsFamilyFriendly}}True{else}False{/if}" />
            <meta itemprop="image" content="{link file=$theme.desktopLogo}" />
        {/block}

        {block name='frontend_index_header_meta_tags_mobile'}
            <meta name="mobile-web-app-capable" content="yes">
            <meta name="apple-mobile-web-app-title" content="{if $theme.appleWebAppTitle != ""}{$theme.appleWebAppTitle|escapeHtml}{else}{{config name=sShopname}|escapeHtml}{/if}">
            <meta name="apple-mobile-web-app-capable" content="yes">
            <meta name="apple-mobile-web-app-status-bar-style" content="default">
        {/block}
    {/block}

    {* Android specifc meta tags *}
    {block name='frontend_index_header_meta_tags_android'}
        <link rel="icon" type="image/png" href="{link file=$theme.androidLogo}" sizes="192x192">
        <meta name="theme-color" content="{$theme['swf-gray-darker']}" />
    {/block}

    {* Set favicons and touch icons for all different sizes *}
    {block name="frontend_index_header_favicons"}
        <link rel="apple-touch-icon-precomposed" href="{link file=$theme.appleTouchIcon}">
        <link rel="shortcut icon" href="{link file=$theme.favicon}">
    {/block}

    {*! Internet Explorer 9 specific meta tags *}
    {block name='frontend_index_header_meta_tags_ie9'}
        <meta name="msapplication-navbutton-color" content="{s name='IndexMetaMsNavButtonColor'}#dd4800{/s}" />{*! Navbutton color *}
        <meta name="application-name" content="{{config name=shopName}|escapeHtml}" />{* Pinned name *}
        <meta name="msapplication-starturl" content="{url controller='index'}" />{*! Start url to launch from the shortcut *}
        <meta name="icon" content="width=1024;height=768"/>
    {/block}

    {*! Canonical link *}
    {block name='frontend_index_header_canonical'}{/block}

    {*! RSS and Atom feeds *}
    {block name="frontend_index_header_feeds"}{/block}

    {* Page title *}
    <title itemprop="name">{block name='frontend_index_header_title'}{strip}
            {if $sBreadcrumb}{foreach from=$sBreadcrumb|array_reverse item=breadcrumb}{$breadcrumb.name} | {/foreach}{/if}{{config name=sShopname}|escapeHtml}
        {/strip}{/block}</title>

    {* Stylesheets *}
    {block name="frontend_index_header_stylesheets_include"}
        {block name="frontend_index_header_css_screen"}
            {{compileLess timestamp={themeTimestamp} output="lessFiles"}}
            {foreach $lessFiles as $stylesheet}
                <link href="{$stylesheet}" media="all" rel="stylesheet" type="text/css" />
            {/foreach}
        {/block}
    {/block}

    {* Print Stylesheets *}
    {block name="frontend_index_header_css_print"}{/block}

    {* Add Modernizr in the "<head>"-element to have all the classes before the page was rendered *}
    {block name="frontend_index_header_javascript_modernizr_lib"}
        {if !$theme.asyncJavascriptLoading}
            <script src="{link file='frontend/_public/vendors/js/modernizr/modernizr.custom.35977.js'}"></script>
        {/if}
    {/block}

    {* Block for tracking codes which are required to include in the `head` section of the document *}
    {block name="frontend_index_header_javascript_tracking"}{/block}
</head>
