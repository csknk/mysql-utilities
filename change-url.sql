UPDATE wp_options SET option_value = replace(option_value, 'http://131-tm.cliffstudio.xyz', 'http://tm.backup') WHERE option_name = 'home' OR option_name = 'siteurl';
UPDATE wp_posts SET guid = replace(guid, 'http://131-tm.cliffstudio.xyz','http://tm.backup');
UPDATE wp_posts SET post_content = replace(post_content, 'http://131-tm.cliffstudio.xyz', 'http://tm.backup');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'http://131-tm.cliffstudio.xyz','http://tm.backup');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'http://131-tm.cliffstudio.xyz/tm-works/','tm-works');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'http://131-tm.cliffstudio.xyz/tm-thinks/','tm-thinks');
UPDATE wp_postmeta SET meta_value = replace(meta_value,'131-tm.cliffstudio.xyz','tm.backup');
