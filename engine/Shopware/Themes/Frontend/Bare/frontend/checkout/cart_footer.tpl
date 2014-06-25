{* Add product using the sku *}
{block name='frontend_checkout_cart_cart_footer_add_product'}
	<form method="post" action="{url action='addArticle' sTargetAction=$sTargetAction}" class="table--add-product add-product--form block-group">

		{block name='frontend_checkout_cart_cart_footer_add_product_field'}
			<input name="sAdd" class="add-product--field block" type="text" placeholder="{s name='CheckoutFooterAddProductPlaceholder' namespace='frontend/checkout/cart_footer_left'}{/s}" />
		{/block}

		{block name='frontend_checkout_cart_cart_footer_add_product_button'}
			<button type="submit" class="add-product--button btn btn--primary is--small block">
				<i class="icon--arrow-right"></i>
			</button>
		{/block}
	</form>
{/block}

<div class="table--aggregation">
	{* Add product using a voucher *}
	{block name='frontend_checkout_cart_cart_footer_add_voucher'}
		<form method="post" action="{url action='addVoucher' sTargetAction=$sTargetAction}" class="table--add-voucher add-voucher--form block-group">

			{block name='frontend_checkout_cart_cart_footer_add_voucher_field'}
				<input type="text" class="add-voucher--field block" name="sVoucher" placeholder="{s name='CheckoutFooterAddVoucherLabelInline'}{/s}" />
			{/block}

			{block name='frontend_checkout_cart_cart_footer_add_voucher_button'}
				<button type="submit" class="add-voucher--button btn btn--primary is--small block">
					<i class="icon--arrow-right"></i>
				</button>
			{/block}
		</form>
	{/block}
</div>