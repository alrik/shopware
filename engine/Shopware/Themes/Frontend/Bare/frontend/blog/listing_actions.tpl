{namespace name="frontend/listing/listing_actions"}

{block name='frontend_listing_actions_top'}

    <div class="listing--actions block-group">

        {if $sNumberPages > 1}
            <div class="listing--paging panel--paging">

                {* Pagination label *}
                {block name='frontend_listing_actions_paging_label'}{/block}

                {* Pagination - Previous page *}
                {block name='frontend_listing_actions_paging_previous'}
                    {if $sPage > 1}
                        <a href="{$sPages.previous|rewrite:$sCategoryInfo.name}" title="{"{s name='ListingLinkPrevious'}{/s}"|escape}" class="pagination--link paging--prev" data-action-link="true">
                            <i class="icon--arrow-left"></i>
                        </a>
                    {/if}
                {/block}

                {* Pagination - current page *}
                {block name='frontend_listing_actions_paging_numbers'}
                    <a title="{$sCategoryInfo.name|escape}" class="pagination--link is--active">{$sPage}</a>
                {/block}

                {* Pagination - Next page *}
                {block name='frontend_listing_actions_paging_next'}
                    {if $sPage < $sNumberPages}
                        <a href="{$sPages.next|rewrite:$sCategoryInfo.name}" title="{"{s name='ListingLinkNext'}{/s}"|escape}" class="pagination--link paging--next" data-action-link="true">
                            <i class="icon--arrow-right"></i>
                        </a>
                    {/if}
                {/block}

                {* Pagination - Number of pages *}
                {block name='frontend_listing_actions_count'}
                    <span class="pagination--display">
                        {s name="ListingTextFrom"}von{/s} <strong>{$sNumberPages}</strong>
                    </span>
                {/block}
            </div>
        {/if}

    </div>
{/block}