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

{capture name=path}{l s='Manufacturers'}{/capture}
{include file="$tpl_dir./breadcrumb.tpl"}

<p class="title_block"><span class="title_block">{l s='Manufacturers'}</span></p>

{if isset($errors) AND $errors}
	{include file="$tpl_dir./errors.tpl"}
{else}
	{if $nb_all_categories > 0}
		<ul class="categories_list clearfix {$nb_all_categories}">
			<li class="all {if !$selected_category}selected{/if}"><a href="{$link->getPageLink('manufacturer')}?n=20&p=1">{l s='All Categories'}</a></li>
			{foreach from=$all_categories item=category}
				<li {if $selected_category == $category.infos.id_category}class="selected"{/if}><a href="{$link->getPageLink('manufacturer')}?n=20&p=1&cat={$category.infos.id_category}">{$category.infos.name}</a></li>
			{/foreach}
		</ul>
	{/if}
	{if $nbManufacturers > 0}
		<ul id="manufacturers_list" class="clearfix">
		{foreach from=$manufacturers item=manufacturer name=manufacturers}
			<li class="{if $smarty.foreach.manufacturers.first}first_item{elseif $smarty.foreach.manufacturers.last}last_item{else}item{/if}">
				<a href="{$link->getmanufacturerLink($manufacturer.id_manufacturer, $manufacturer.link_rewrite)|escape:'htmlall':'UTF-8'}" class="lnk_img" title="{$manufacturer.name|escape:'htmlall':'UTF-8'} ({$manufacturer.nb_products} {if $manufacturer.nb_products != 1}{l s='Products'}{else}{l s='Product'}{/if})">
					<img src="{$img_manu_dir}{$manufacturer.id_manufacturer}-manufacturer.jpg" alt="{$manufacturer.name|escape:'htmlall':'UTF-8'}" />
				</a>
			</li>
		{/foreach}
		</ul>
		{include file="$tpl_dir./pagination.tpl"}
	{/if}
	{if $nbManufacturers == 0}
	<p class="nbrmanufacturer">
		<span class="bold">
			{if $selected_category}
				{l s='There are no manufacturers for this category.'}
			{else}
				{l s='There are no manufacturers.'}
			{/if}
		</span>
	</p>
	{/if}
{/if}
