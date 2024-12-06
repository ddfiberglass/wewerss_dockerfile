FROM cooderl/wewe-rss
# COPY add_files /opt/bitnami/drupal
# RUN cd /opt/bitnami/drupal && composer config --no-plugins allow-plugins.cweagans/composer-patches true && composer require drupal/ctools drupal/field_permissions drupal/search_api drupal/simplenews drupal/next drupal/decoupled_router drupal/simple_oauth drupal/subrequests drupal/search_api_solr drupal/facets drupal/address drupal/pathauto drupal/smart_date drupal/honeypot drupal/role_expire drupal/symfony_mailer cweagans/composer-patches --update-with-dependencies

## && composer upgrade 在RUN 最后面加上上面这个升级也可以运行，构建镜像。
# RUN cd /opt/bitnami/drupal && composer update "drupal/core-*" --with-all-dependencies
# delete drupal/chosen drupal/geofield drupal/geofield_map drupal/leaflet drupal/taxonomy_manager drupal/geocoder:^3.29 drupal/geocoder_ajax_prepopulate geocoder-php/nominatim-provider  drupal/asset_injector 
# delete smtp admin_toolbar
# delete drupal/simplenews drupal/next  for drupal 11 not compatible
#delete drupal/decoupled_router drupal/simple_oauth drupal/subrequests because it is for drupal/next 
