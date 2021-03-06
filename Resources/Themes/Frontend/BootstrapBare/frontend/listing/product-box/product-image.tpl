{block name='frontend_listing_box_article_image'}
    <a href="{$sArticle.linkDetails}"
       title="{$sArticle.articleName|escape}"
       class="product-image">
        {block name='frontend_listing_box_article_image_element'}
            <div class="image-wrapper" data-equal="image">
                {block name='frontend_listing_box_article_image_media'}

                    {$desc = $sArticle.articleName|escape}

                    {if isset($sArticle.image.thumbnails)}
                        {if $sArticle.image.description}
                            {$desc = $sArticle.image.description|escape}
                        {/if}
                        {block name='frontend_listing_box_article_image_picture_element'}
                            <img srcset="{$sArticle.image.thumbnails[0].sourceSet}"
                                 alt="{$desc}"
                                 title="{$desc|truncate:160:""}"
                                 class="img-responsive img-center" />
                        {/block}
                    {else}
                        <img src="{link file='frontend/_public/src/img/no-picture.png'}"
                             alt="{$desc}"
                             title="{$desc|truncate:160:""}"
                             class="img-responsive img-center" />
                    {/if}
                {/block}
            </div>
        {/block}
    </a>
{/block}
