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

{include file="$tpl_dir./breadcrumb.tpl"}
{include file="$tpl_dir./errors.tpl"}

{if isset($category)}
	{if $category->id AND $category->active}
		{if isset($subcategories)}
		<!-- Subcategories -->
		<div id="subcategories">
			<span id="subCatButton"> </span>
			<h3>{l s='Subcategories'}</h3>
			<ul class="inline_list clearfix">
			{foreach from=$subcategories item=subcategory}
				<li>
					<a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$subcategory.name|escape:'htmlall':'UTF-8'}" class="img">
						{if $subcategory.id_image}
							<img src="{$link->getCatImageLink($subcategory.link_rewrite, $subcategory.id_image, 'medium_default')}" alt="" width="{$mediumSize.width}" height="{$mediumSize.height}" />
						{else}
							<img src="{$img_cat_dir}default-medium_default.jpg" alt="" width="{$mediumSize.width}" height="{$mediumSize.height}" />
						{/if}
					</a>
					<a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}" class="cat_name">{$subcategory.name|escape:'htmlall':'UTF-8'}</a>
					{if $subcategory.description}
						<p class="cat_desc">{$subcategory.description}</p>
					{/if}
				</li>
			{/foreach}
			</ul>
			<br class="clear"/>
		</div>
		{/if}

		{if $products}
			<div class="content_sortPagiBar">
				{include file="$tpl_dir./pagination.tpl"}
				<div class="sortPagiBar clearfix">
					{include file="./product-sort.tpl"}
					{include file="./nbr-product-page.tpl"}
				</div>
			</div>
			
			{include file="./product-list.tpl" products=$products}
			
			<div class="content_sortPagiBar">
				<div class="sortPagiBar clearfix">
					{include file="./product-sort.tpl"}
					{include file="./nbr-product-page.tpl"}
				</div>
				{include file="./pagination.tpl"}
			</div>
		{/if}
	{elseif $category->id}
		<p class="warning">{l s='This category is currently unavailable.'}</p>
	{/if}
{/if}
{literal}
<script>
	$('document').ready(function(){
		setTimeout(
			function(){
				$('#subcategories ul').slideUp('slow',function(){
					$('#subCatButton').toggleClass('hidden');
				});
			},
			'800'
		);
		
		$('#subCatButton').bind('click',function(){
			if($(this).hasClass('hidden')) {
				$('#subcategories ul').slideDown('slow');
			} else {
				$('#subcategories ul').slideUp('slow');
			}
			
			$('#subCatButton').toggleClass('hidden');
		});
	});
</script>
{/literal}
