        override protected function startTask():void
        {
            this.logger.info("PurchaseCharacterClassTask.startTask: Started ");
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/char/purchaseClassUnlock", this.makeRequestPacket());
        }

        public function makeRequestPacket():Object
        {
            var _local_1:Object = {};
            _local_1.game_net_user_id = this.account.gameNetworkUserId();
            _local_1.game_net = this.account.gameNetwork();
            _local_1.play_platform = this.account.playPlatform();
            _local_1.do_login = Parameters.sendLogin_;
            _local_1.classType = this.classType;
            MoreObjectUtil.addToObject(_local_1, this.account.getCredentials());
            return (_local_1);
        }
