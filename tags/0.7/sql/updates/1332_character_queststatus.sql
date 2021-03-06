ALTER TABLE `character_queststatus`
    CHANGE `playerid`        `guid`       bigint(20) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
    CHANGE `questid`         `quest`      int(11)    unsigned NOT NULL default '0' COMMENT 'Quest Identifier',
    CHANGE `status`          `status`     int(11)    unsigned NOT NULL default '0',
    CHANGE `rewarded`        `rewarded`   int(11)    unsigned NOT NULL default '0',
    CHANGE `explored`        `explored`   int(11)    unsigned NOT NULL default '0' AFTER `rewarded` ,
    CHANGE `timer`           `timer`      bigint(20) unsigned NOT NULL default '0' AFTER `explored` ,   
    CHANGE `questMobCount1`  `mobcount1`  int(11)    unsigned NOT NULL default '0',
    CHANGE `questMobCount2`  `mobcount2`  int(11)    unsigned NOT NULL default '0',
    CHANGE `questMobCount3`  `mobcount3`  int(11)    unsigned NOT NULL default '0',
    CHANGE `questMobCount4`  `mobcount4`  int(11)    unsigned NOT NULL default '0',
    CHANGE `questItemCount1` `itemcount1` int(11)    unsigned NOT NULL default '0',
    CHANGE `questItemCount2` `itemcount2` int(11)    unsigned NOT NULL default '0',
    CHANGE `questItemCount3` `itemcount3` int(11)    unsigned NOT NULL default '0',
    CHANGE `questItemCount4` `itemcount4` int(11)    unsigned NOT NULL default '0',
    DROP `id` ,
    DROP PRIMARY KEY ,
    ADD  PRIMARY KEY  (`guid`,`quest`) ;
