<div id="pages-controller-cms-content" class="flexbox-area-grow fill-height cms-content" data-layout-type="border" data-pjax-fragment="Content">
	<div class="cms-content-header north vertical-align-items">
		<div class="cms-content-header-info fill-width vertical-align-items">
			<% include SilverStripe/Admin/CMSBreadcrumbs %>
		</div>
		<div class="dashboard-top-buttons">
			<% if $CanAddPanels %>
				<a class="btn btn-primary manage-dashboard" href="javascript:void(0);"><%t UncleCheese\Dashboard\Dashboard.ADDPANEL 'New Panel' %></a>
			<% end_if %>
			<% if $IsAdmin %>
				<span class="ss-fancy-dropdown right">
					<a class="btn btn-secondary ss-fancy-dropdown-btn" href="javascript:void(0)"><%t UncleCheese\Dashboard\Dashboard_Content.ADMINISTRATION 'Administration' %></a>
					<span class="ss-fancy-dropdown-options">
						<a class="set-as-default dashboard-message-link" href="$Link('setdefault')"><%t UncleCheese\Dashboard\Dashboard.SETASDEFAULT 'Make this the default dashboard' %></a>
						<a class="apply-to-all dashboard-message-link" href="$Link('applytoall')"><%t UncleCheese\Dashboard\Dashboard.APPLYTOALL 'Apply this dashboard to all members' %></a>
					</span>
				</span>
			<% end_if %>

		</div>
	</div>
	<div class="dashboard dashboard-sortable" data-sort-url="$Link('sort')">
		<div id="dashboard-message"></div>
		<div class="dashboard-panel-list">
			$PanelHolder
		</div>
		<div class="dashboard-panel-selection dashboard-panel normal" id="dashboard-panel-0">
			<div class="dashboard-panel-inner">
				<div class="dashboard-panel-selection-inner">
					<div class="dashboard-panel-header">
						<div class="dashboard-panel-icon">
							<img src="$resourceURL('unclecheese/dashboard:images/dashboard-panel-default.png')" width="24" height="24"/>
						</div>

						<h3><%t UncleCheese\Dashboard\Dashboard.CHOOSEPANELTYPE 'Choose a panel type' %></h3>
					</div>
					<div class="dashboard-panel-content">
						<% loop $AllPanels %>
							<div class="available-panel $EvenOdd" data-type="$Class" data-create-url="$CreateLink" <% if $ShowConfigure %>data-configure="true"<% end_if %>>
								<div class="available-panel-icon">
									<img src="$Icon"/>
								</div>
								<div class="available-panel-content">
									<h4>$Label</h4>
									<p>$Description</p>
								</div>
							</div>
						<% end_loop %>
					</div>
					<div class="dashboard-panel-footer">
						<div class="dashboard-panel-footer-actions">
							<button class="btn btn-secondary dashboard-create-cancel"><%t UncleCheese\Dashboard\Dashboard.CANCEL 'Cancel' %></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
