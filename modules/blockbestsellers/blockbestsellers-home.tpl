{*
* 2007-2012 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2012 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- MODULE Home Block best sellers -->
<div id="best-sellers_block_center" class="block products_block">
	<p class="title_block">
		{l s='Top sellers' mod='blockbestsellers'}
		<span class="more"><a style="float:right;" href="{$link->getPageLink('best-sales')}" title="{l s='All best sellers' mod='blockbestsellers'}" >{l s='More' mod='blockbestsellers'} &raquo;</a></span>
	</p>
	<div class="block_content">
		{if isset($best_sellers) AND $best_sellers}
			{assign var='liHeight' value=320}
			{assign var='nbItemsPerLine' value=3}
			{assign var='nbLi' value=$best_sellers|@count}
			{math equation="nbLi/nbItemsPerLine" nbLi=$nbLi nbItemsPerLine=$nbItemsPerLine assign=nbLines}
			{math equation="nbLines*liHeight" nbLines=$nbLines|ceil liHeight=$liHeight assign=ulHeight}
			<ul class="clearfix">
			{foreach from=$best_sellers item=product name=myLoop}
				<li style="border-bottom:0" class="ajax_block_product {if $smarty.foreach.myLoop.first}first_item{elseif $smarty.foreach.myLoop.last}last_item{else}item{/if} {if $smarty.foreach.myLoop.iteration%$nbItemsPerLine == 0}last_item_of_line{elseif $smarty.foreach.myLoop.iteration%$nbItemsPerLine == 1}clear{/if} {if $smarty.foreach.myLoop.iteration > ($smarty.foreach.myLoop.total - ($smarty.foreach.myLoop.total % $nbItemsPerLine))}last_line{/if}">
					<a href="{$product.link}" title="{$product.name|escape:html:'UTF-8'}" class="product_image"><img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'medium_default')}" height="{$mediumSize.height}" width="{$mediumSize.width}" alt="{$product.name|escape:html:'UTF-8'}" /></a>
				</li>
				{if $smarty.foreach.myLoop.iteration == $nbItemsPerLine}{break}{/if}
			{/foreach}
			</ul>
		{else}
			<p>{l s='No best sellers at this time' mod='blockbestsellers'}</p>
		{/if}
	</div>
	<br class="clear"/>
</div>
<!-- /MODULE Home Block best sellers -->
