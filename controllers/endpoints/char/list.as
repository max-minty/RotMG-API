        {
            var _local_1:Object = {};
            _local_1.game_net_user_id = this.account.gameNetworkUserId();
            _local_1.game_net = this.account.gameNetwork();
            _local_1.play_platform = this.account.playPlatform();
            _local_1.do_login = Parameters.sendLogin_;
            _local_1.challenger = Boolean(this.seasonalEventModel.isChallenger);
            MoreObjectUtil.addToObject(_local_1, this.account.getCredentials());
            return (_local_1);
        }
