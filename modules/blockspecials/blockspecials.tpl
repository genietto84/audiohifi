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

<!-- MODULE Block specials -->
<div id="special_block_right" class="block products_block exclusive blockspecials">
	<p class="title_block">
		<a href="{$link->getPageLink('prices-drop')}" title="{l s='Specials' mod='blockspecials'}">{l s='Specials' mod='blockspecials'}</a>
		<span class="more"><a href="{$link->getPageLink('prices-drop')}" title="{l s='All specials' mod='blockspecials'}">{l s='More' mod='blockspecials'} &raquo;</a></span>
	</p>
	<div class="block_content">

{if $special}
		<ul class="products clearfix">
			{for $i=0 to 2}
			<li class="product_image">
				<a href="{$special[$i].link}" title="{$special[$i].name|escape:html:'UTF-8'}" class="product_image"><img src="{$link->getImageLink($special[$i].link_rewrite, $special[$i].id_image, 'medium_default')}" height="{$mediumSize.height}" width="{$mediumSize.width}" alt="{$special[$i].name|escape:html:'UTF-8'}" /></a>
			</li>
			{/for}
		</ul>
{else}
		<p>{l s='No specials at this time' mod='blockspecials'}</p>
{/if}
	</div>
</div>
<!-- /MODULE Block specials -->