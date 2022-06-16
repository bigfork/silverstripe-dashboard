<?php

namespace ilateral\SilverStripe\Dashboard;

use SilverStripe\ORM\DataExtension;

/**
 * Decorates the {@link SiteConfig} object to work with the Dashboard CMS interface
 * SiteConfig holds the default configuration of a dashboard.
 * 
 * @package Dashboard
 * @author Uncle Cheese <unclecheese@leftandmain.com>
 */
class DashboardSiteConfig extends DataExtension {
	

	private static $has_many = [
		'DashboardPanels' => DashboardPanel::class,
	];


}