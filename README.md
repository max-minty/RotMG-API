# RotMG-API
A collection of API documentations for RotMG.  This repository contains *all* API endpoints with response payloads.

This is an updated version of Zeroeh's RotMG Appspot repo.


## Root URL
- https://realmofthemadgodhrd.appspot.com
- https://realmofthemadgod.appspot.com (used before kabam account migration)
- https://rotmg.com (redirect to https://www.realmofthemadgod.com/)
- http://rot.mg (redirect to https://www.realmofthemadgod.com/)

## Subdomains
- [http://play.realmofthemadgod.com](https://web.archive.org/web/20160630000841/http://play.realmofthemadgod.com/) (used by kabam till 2016 for unknown purpose)
- http://remaster.realmofthemadgod.com
- http://unity.realmofthemadgod.com

## Testing Links
- https://rotmghrdtesting.appspot.com (old kabam test server used for account migration testing)
- https://rotmgtesting.appspot.com (the current rotmg testing server)
- https://realmtesting2.appspot.com ("hidden" testing server for private testers)
- https://test.realmofthemadgod.com
- https://test2.realmofthemadgod.com
- https://test3.realmofthemadgod.com
- https://rotmgtesting3.appspot.com
- https://rotmgtesting4.appspot.com
- https://rotmgtesting5.appspot.com
- https://testing.realmofthemadgod.com

## External Official Links
- https://storage.googleapis.com/rotmg_images_public

Directories marked with an asterisk (*) are internal server urls and will always return ``<Failure/>``

Endpoints without any listed arguments could still take certain parameters, but they might not be listed here yet due to incompletedness.

Please note that DECA can add or remove links at any time.

### Known URL Parameters (Sorted by key:value, or example value)
| Parameter | Example Value | Description |
|-----------|---------------|-------------|
| `game_net` | `rotmg` | Game network identifier |
| `gameClientVersion` | `X31.2.3` | Current game client version |
| `game_net_user_id` | `_empty_` |  |
| `languageType` | `en` | Language code (en, de, fr, etc.) |
| `guid` | `player@example.com` | User email/username |
| `password` | `password123` | User password (plaintext, sent over HTTPS) |
| `accessToken` | `eyJhbGciOiJIUzI1...uQ==` | Generated on Login (Expires after 24h) |
| `clientToken` | `0` | |
| `type` | `Unity` | Used in credits |
| `version` | `1.0` | Required in XML Responses |

``/``
 * ``logowtext.png``
 * ``realmlogo.png``
 * ``version.txt`` => time (unix time)
 * ``servers.txt``
 * ``crossdomain.xml``
 * ``draw.html``
 * ``draw/html``
 * ``TMLoader{version}.swf``
 * ``TextureMaker{version}.swf``
 * ``AGCloader{version}.swf``
 * ``client``
 * ``AssembleeGameClient{version}.swf``
 * ``playerProductInstall.swf``
 * ``UGDTermsofUse.html``
 * ``kongregate.html``
 * ``xd.html``
 * ``PrivacyPolicy.html``
 * ``kabam.html``
 * ``app.yaml``
 * ``index.yaml``
 * ``dispatch.yaml``
 * ``cron.yaml``
 * ``dos.yaml``
 * ``queue.yaml``
 * ``legacy``

``app/``
 * ``globalNews``
 * ``getLanguageStrings`` => languageType (en)
 * [`init`](responses/app/init.xml) => platform (standalonewindows64 or standalonewindows), key (seems to be hardcoded - 9KnJFxtTvLu2frXv for windows), game_net (Unity), play_platform (Unity), game_net_user_id
 * ``publicStaticData`` => dataType (powerUpSettings)

``package/``
 * ``getPackages`` => guid, password, version (seems to accept any float like 1.0)

``shop/``
 * [`deals`](responses/shop/deals.xml) => accessToken, version (seems to accept any float like 1.0)
 * [`getOffers`](responses/shop/getOffers.txt) => *`Missing Parameters`*
 * [`purchaseItems`](responses/shop/purchaseItems.xml) => *`Missing Parameters`*

``credits/``
 * [`getVirtualItemsList`](responses/credits/getVirtualItemsList.json) => accessToken
 * [`paymentToken`](responses/credits/paymentToken.json) => accessToken, type
 * [`add`](responses/credits/add.html) => tok, exp, guid, provider, jwt, price, paymentid
 * [`done`](responses/credits/done.html)
 * [`error`](responses/credits/error.html)
* [`token`](responses/credits/token.json) => accessToken

``picture/`` => Seems to redirect to google login now
 * ``list`` => myGUID, guid, dataType, tags, offset, num
 * ``get`` => id, time
 * ``save``
 * ``delete`` => id, guid, password

``images/``
 * ``DecaLogoWhite.png``
 * ``kabamLogo192x97.png``

``css/``
 * ``rotmg.common.css``

``js/``
 * ``rotmg.UrlLib.js``
 * ``rotmg.Paymentwall.js``
 * ``jquery-1.8.0.min.js``
 * ``rotmg.Xsolla.js``
 * ``AC_OETags.js``
 * ``rotmg.Paymentwall.js``
 * ``rotmg.SalesForce.js``
 * ``rotmg.Client.js``

``admin/`` => Takes you to google sign in

[``data/``](responses/data.html) => prints a message saying invalid login, previously was "you are forbidden to access this page"

``log/``
* [`logout`](responses/log/logout.xml) => accessToken
 * ``logFteStep`` => game_net_user_id, game_net, play_platform, guid, password, fteStepCompleted (used for tracking tutorial progress, removed)
 * [`logGameModePlayed`](responses/log/logGameModePlayed.xml) => seasonID, gameMode (Legacy or Challenger), accessToken

``server/`` => all of these urls are internal
 * ``list``
 * ``add``
 * ``remove``

``serverStatus/`` => all of these urls are internal
 * [`getServerStatus`](responses/serverStatus/getServerStatus.xml) => accessToken, game_net (Unity), play_platform (Unity), game_net_user_id


``account/``
 * [`register`](responses/account/register.xml) => newPassword, entrytag, newGUID, name(not needed), isAgeVerified, guid, signedUpKabamEmail (0 or 1)
 * [`verify`](responses/account/verify.xml) => guid, password, clientToken (0) (used by Muledump)
 * [`verifyAccessTokenClient`](responses/account/verifyAccessTokenClient.xml) => accessToken
 * [`verifyage`](responses/account/verifyage.xml) => guid, accessToken
 * [`acceptTOS`](responses/account/acceptTOS.xml) => accessToken
 * [`changeEmail`](responses/account/changeEmail.xml) => guid, password, newGuid (always returns emailAlreadyVerified)
 * ``playFortuneGame`` => choice, status, currency (2 for fortune tokens or 0 for gold)
 * ``rp`` => a, b
 * [`setName`](responses/account/setName.xml) => accessToken, name
 * ``setName`` => guid, password, name
 * ``validateEmail`` (removed, changed to isEmailVerified)
 * ``supportVerify`` => guid, password, secret
 * ``*addStar``
 * ``*addIgnore``
 * [`getDustCost`](responses/account/getDustCost.txt)
 * [`purchaseCharSlot`](responses/account/purchaseCharSlot.xml) => accessToken
 * ``*purchaseVaultChest``
 * ``purchaseSkin`` => *`Missing Parameters`* accessToken, skinType, *`skinID*`*, *`currency*`*, *`quantity*`*
 * [`purchaseMysteryBox`](responses/account/purchaseMysteryBox.xml) => accessToken, boxId, quantity, price, currency
 * [`purchasePackage`](responses/account/purchasePackage.xml) => accessToken, boxId, quantity, price, currency
 * ``purchaseCustomization`` => *`Missing Parameters`*
 * [`ownedSkins`](responses/account/ownedSkins.xml) => accessToken
 * [`getOwnedPetSkins`](responses/account/getOwnedPetSkins.xml) => accessToken
 * ``getBeginnerPackageTimeLeft`` => guid, password (removed)
 * [`sendVerifyEmail`](responses/account/sendVerifyEmail.xml) => accessToken
 * ``extendAccessToken`` => *`Missing Parameters`*
 * [`forgotPassword`](responses/account/forgotPassword.xml) => guid
 * [`changePassword`](responses/account/changePassword.xml) => guid, password, newPassword
 * [`getCredits`](responses/account/getCredits.xml) => accessToken
 * [`listPowerUpStats`](responses/account/listPowerUpStats.xml) => accessToken
 * ``setNewsletterEmail`` => *`Missing Parameters`*
 * ``ban`` => Returns internal error
 * [`v`](responses/account/v.html) => a, b(Getting the captcha); a, action, g-recaptcha-response(Submitting the captcha)
 * ``*claimLoginReward`` => *`Missing Parameters`*
 * [`saveSecurityQuestions`](responses/account/saveSecurityQuestions.xml) => accessToken, answers (encoded in base64 and split by a pipe operator [|])
 * ``forgotpasswordPage`` => links to a page where you enter your email
 * [`isEmailVerified`](responses/account/isEmailVerified.xml) => guid, accessToken
 * [`signupDecaEmail`](responses/account/signupDecaEmail.xml) => notifyMe (1 or 0), guid, password, email
 * ``spammer`` => Returns internal error
 * [`servers`](responses/account/servers.xml) => accessToken
 * [`list`](responses/account/list.xml) => accessToken, type(1:ignored or 0:locked)

``accountLevelRewards/``
* [`getConfig`](responses/accountLevelRewards/getConfig.json) => accessToken

``supportCampaign/``
 * [`claim`](responses/supportCampaign/claim.xml) => accessToken
 * [`donate`](responses/supportCampaign/donate.xml) => accessToken
 * [`unlock`](responses/supportCampaign/unlock.xml) => accessToken
 * [`status`](responses/supportCampaign/status.xml) => accessToken
 * [`create`](responses/supportCampaign/create.xml) => (responds with <Error>Server error<Error/>)
 * ``getinfo`` => (responds with nothing if no unity campaign active)
 * [`getUnitySupporters`](responses/supportCampaign/getUnitySupporters.xml) => accessToken, page
 
``fame/``
 * ``list`` => timespan (week, month, all), &charId, &accountId
 * ``challengerSeasonList`` => guid, password
 * ``challengerLeaderboard`` => accountId, charId, timespan (same as fame/list)
 * ``challengerAccountLeaderboard`` => accountId, charId, timespan (same as fame/list)

``calendar/``
* [`getForClient`](responses/calendar/getForClient.json) => guid, accessToken

``craigsgift/``
* [`buy`](responses/craigsgift/buy.json) => *`Missing Parameters`*
* [`info`](responses/craigsgift/info.json) => accessToken

``crucibles/``
* [`info`](responses/crucibles/info.xml) => (responds with Only server can request info)

``dailyLogin/``
* [`fetchCalendar`](responses/dailyLogin/fetchCalendar.xml) => accessToken

``dailyquest/``
 * ``resetDailyQuests`` => accessToken (returns <Error>Server error<Error/>)
* [`resetDailyQuestsAdmin`](responses/dailyquest/resetDailyQuestsAdmin.xml) => accessToken (requires admin account)

``dungeonEvent/``
* [`getClientEvents`](responses/dungeonEvent/getClientEvents.txt)

``missions/``
* [`getClientSeasons`](responses/missions/getClientSeasons.json) => accessToken
* [`getCompetition`](responses/missions/getCompetition.xml) => accessToken (responds with nothing if no Competition / Community Event active)
* [`getCompetitionScore`](responses/missions/getCompetitionScore.xml) => accessToken (responds with nothing if no Competition / Community Event active)
* [`getPlayerMissions`](responses/missions/getPlayerMissions.xml) => accessToken

``season/``
* ``getSeasons`` => guid, password, gameClientVersion
* [`battlePass/buyExaltedPass`](responses/season/battlePass/buyExaltedPass.json) => accessToken
* [`bpInfo`](responses/season/bpInfo.json) => accessToken
* [`seasonInfo`](responses/season/seasonInfo.json) => accessToken

``char/``
 * ``list`` => guid, password, [challenger (false/true)][muleDump (true/false)]
 * ``fame`` => accountId, charId
 * ``*purchase``
 * ``*get``
 * ``*reskin``
 * ``*create``
 * ``*update``
 * ``purchaseClassUnlock`` => guid, password, game_net_user_id, game_net, play_platform, do_login, classType
 * ``delete`` => guid, password, charId, reason (seems to be always 1)

``inGameNews/``
 * ``getNews``
 
 ``unityNews/``
 * [`getNews`](responses/unityNews/getNews.html)

``friends/``
 * [`requestFriend`](responses/friends/requestFriend.xml) => accessToken, targetName
 * [`getList`](responses/friends/getList.xml) => accessToken
 * [`getRequests`](responses/friends/getRequests.xml) => accessToken
 * [`acceptRequest`](responses/friends/acceptRequest.xml) => accessToken, targetName
 * [`rejectRequest`](responses/friends/rejectRequest.xml) => accessToken, targetName
 * [`removeFriend`](responses/friends/removeFriend.xml) => accessToken, targetName (also responds success for pending friend request)
 * [`blockRequest`](responses/friends/blockRequest.xml) => accessToken, targetName (you can't undo this! "Player has blocked you. Cannot add Friend")
 * ``*populateFriends`` => *`Missing Parameters`*

``pet/``
 * ``*feed``
 * ``*get`` => *`Missing Parameters`*
 * ``*fuse``
 * ``*createPet``
 * ``*yardupgrade``

``guild/``
 * ``*changeRank``
 * ``*removeMember``
 * ``*create``
 * [`getBoard`](responses/guild/getBoard.txt) => accessToken
 * [`setBoard`](responses/guild/setBoard.xml) => accessToken, board
 * [`listMembers`](responses/guild/listMembers.xml) => accessToken
 * ``*purchase``

``steamworks/``
 * ``finalizePurchase`` => appid, orderid, authorized (1 or 0)
 * ``getcredentials`` => userId
 * ``purchaseOffer`` => steamid, data
 * ``register`` => newGUID, newPassword, entrytag (disabled)
 * ``link`` (disabled)
* [`getoffers`](responses/steamworks/getoffers.xml)

``ugc/`` (User Generated Content)
 * ``save`` => guid, password, name, description, width, height, mapjm, tags, totalObjects, totalTiles, thumbnail, overwrite (on or off) (seems to always return <Error>Invalid permissions</Error>)
 * ``*get``
 
``build/``
 * ``toolsVersion`` =>  page responds with "Page not found", but directory exists. client directs to it. 

``survey/``
 * ``add`` => Returns 500 error
 * ``*delete``

``eventlog/`` => Access is forbidden

``hotkeyz/`` => Access is forbidden

``topz/`` => Access is forbidden

``rpcz/`` => Access is forbidden

## Unknown urls

Payment url: http://www.realmofthemadgod.com/?user_id=email&status=done&invoice_id=111111111


## In-game Commands
 * ``/class``, ``/c``, ``/classes``
 * ``/guild ``, ``/g `` => text (guild chat)
 * ``/help``, ``/h``
 * ``/ignore `` => username
 * ``/join `` => guild (accept guild invite)
 * ``/kick `` => username (dungeon owner that popped in bazaar)
 * ``/cond `` => username (You are not an admin)
 * ``/log``
 * ``/mute `` => username (You are not an admin)
 * ``/unmute `` => username (You are not an admin)
 * ``/party ``, ``/p `` => text (party chat)
 * ``/partyleave``, ``/pleave``
 * ``/pinvite `` => username
 * ``/tell ``, ``/t `` => text (private chat)
 * ``/teleport ``, ``/tp `` => username (teleport to player)
 * ``/trade `` => username (trade a player)
 * ``/resetemote`` => (clears the assigned emotes in slot)
 * ``/setemote`` => slot, emoteID (i.e `/setemote 1 49317` - White Bag Emote)
 * ``/setvictory`` => emoteID (i.e `/setvictory 49317` - White Bag Emote)
 * ``/resetCalendar``
 * ``/resetDailyQuests``
 * ``/resetPackagePopup``
 * ``/resetBPStartPopup``
 * ``/resetBPReminderPopup``
 * ``/resetBPEndPopup``


## Deprecated OR Replaced
``account/``
 * ``login``
 * ``getBeginnerPackageTimeLeft`` => guid, password (removed)

``arena/``
 * ``getRecords`` => type (weekly, personal, alltime), guid, password
 * ``getPersonalBest`` => guid, password

``mysterybox/``
 * ``getBoxes`` => guid, password, version (seems to accept any float like 1.0)

``credits/``
 * ``getoffers`` => guid, password
 * ``pwpurchase`` => iframeUrl (json with these params: token, production)
 * ``kabamadd`` => naid, signedRequest, createdat (removed)
``news/`` => Takes you to google sign in

``clientError/``
 * ``add`` => text, guid

``cronJob/`` => Takes you to google sign in

``events/``

``exalt/``

``kabam/``
 * ``getcredentials`` => userId, signedRequest, entrytag
 * ``link`` => kabamemail, kabampassword, email, password
 * ``verify`` => kabamemail, kabampassword

``kongregate/``
 * ``getcredentials`` => userId, gameAuthToken
 * ``register`` => userId, username, gameAuthToken, newGUID, newPassword, entrytag
 * ``link`` (disabled)
 * ``internalRegister`` => userId, username, gameAuthToken, guid
 * ``getoffers``
 * ``callback`` 
 * May be related: https://docs.kongregate.com/docs/server-side-http#section-callback-format

``migrate/``
 * ``doMigration`` => guid, password
 * ``progress`` => guid
 * ``userAccountReset`` => guid, password (returns Failure, testing environment only)

``music/``
 * ``sorc.mp3`` => main theme for RotMG

``platforms/``
 * ``kabam`` => Error 405. Method GET not allowed.

``sfx/``
 * => too many mp3 files to list (you can find these in pserver sources)
 * See: https://realmofthemadgod.fandom.com/wiki/Sounds
