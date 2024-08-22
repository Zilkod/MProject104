<div id="navigation">
	<div class="col-lg-9">
		<div class="panel panel-default">
			<div class="panel-heading">Active Navigation</div>
			<div class="panel-body">

				<div class="clearfix">
					<ul id="active-navigation" class="nav navbar-nav">
						<!-- BEGIN navigation -->
						<li data-index="{navigation.index}" class="{navigation.class} <!-- IF navigation.selected --> active <!-- ENDIF navigation.selected -->">
							<a href="#" title="{navigation.route}" id="{navigation.id}">
								<!-- IF navigation.iconClass -->
								<i class="fa fa-fw {navigation.iconClass}"></i>
								<!-- ENDIF navigation.iconClass -->

								<!-- IF navigation.text -->
								<span class="{navigation.textClass}">{navigation.text}</span>
								<!-- ENDIF navigation.text -->
							</a>
						</li>
						<!-- END navigation -->
					</ul>
				</div>

				<hr/>

				<ul id="enabled">
					<!-- BEGIN enabled -->
					<li data-index="{enabled.index}" class="well <!-- IF !enabled.selected -->hidden<!-- ENDIF !enabled.selected -->">
						<form>
							<div class="row">
								<div class="col-sm-6">

									<div class="form-group">
										<label>Icon:</label>
										<br/>
										<span class="iconPicker"><i class="fa fa-2x {enabled.iconClass}"></i>
											<input class="form-control" type="hidden" name="iconClass" value="{enabled.iconClass}" />
										</span>
									</div>

									<div class="form-group">
										<label>Route:</label>
										<input class="form-control" type="text" name="route" value="{enabled.route}" />
									</div>

									<div class="form-group">
										<label>Tooltip:</label>
										<input class="form-control" type="text" name="title" value="{enabled.title}" />
									</div>
								</div>

								<div class="col-sm-6">
									<div class="form-group">
										<label>Text:</label>
										<input class="form-control" type="text" name="text" value="{enabled.text}" />
									</div>

									<div class="form-group">
										<label>Text Class: <small>optional</small></label>
										<input class="form-control" type="text" name="textClass" value="{enabled.textClass}" />
									</div>

									<div class="form-group">
										<label>ID: <small>optional</small></label>
										<input class="form-control" type="text" name="id" value="{enabled.id}" />
									</div>
								</div>
							</div>

							<hr />

							<strong>Properties:</strong>
							<div class="checkbox">
								<label>
									<input type="checkbox" name="property:adminOnly" <!-- IF enabled.properties.adminOnly -->checked<!-- ENDIF enabled.properties.adminOnly -->/> <strong>Only display to Admins</strong>
								</label>
							</div>
							<div class="checkbox">
								<label>
									<input type="checkbox" name="property:loggedIn" <!-- IF enabled.properties.loggedIn -->checked<!-- ENDIF enabled.properties.loggedIn -->/> <strong>Only display to logged in users</strong>
								</label>
							</div>
							<div class="checkbox">
								<label>
									<input type="checkbox" name="property:targetBlank" <!-- IF enabled.properties.targetBlank -->checked<!-- ENDIF enabled.properties.targetBlank -->/> <strong>Open in a new window</strong>
								</label>
							</div>


							<hr />
							<button class="btn btn-danger delete">Delete</button>
							<!-- IF enabled.enabled -->
							<button class="btn btn-warning toggle">Disable</button>
							<!-- ELSE -->
							<button class="btn btn-success toggle">Enable</button>
							<!-- ENDIF enabled.enabled -->
							<input type="hidden" name="enabled" value="{enabled.enabled}" />
						</form>
					</li>
					<!-- END enabled -->
				</ul>
			</div>
		</div>
	</div>

	<div class="col-lg-3">
		<div class="panel panel-default">
			<div class="panel-heading">Available Menu Items</div>
			<div class="panel-body">
				<ul id="available">
					<li data-id="custom" class="clearfix">
						<div data-id="custom" class="drag-item alert alert-warning pull-left">
							<i class="fa fa-fw fa-navicon"></i>
						</div>
						<strong>Custom Route</strong>
					</li>
					<!-- BEGIN available -->
					<li data-id="@index" class="clearfix">
						<div data-id="@index" class="drag-item alert <!-- IF available.core -->alert-info<!-- ELSE -->alert-success<!-- ENDIF available.core --> pull-left">
							<i class="fa fa-fw <!-- IF available.iconClass -->{available.iconClass}<!-- ELSE -->fa-navicon<!-- ENDIF available.iconClass -->"></i>
						</div>
						<p>
							<strong>{available.text}</strong> {available.route} <br/>
							<!-- IF available.core --> core <!-- ELSE --> plugin <!-- ENDIF available.core -->
						</p>
					</li>
					<!-- END available -->
				</ul>
			</div>
		</div>
	</div>
</div>

<button id="save" class="floating-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
	<i class="material-icons">save</i>
</button>