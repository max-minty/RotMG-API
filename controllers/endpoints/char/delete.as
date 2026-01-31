
        override protected function startTask():void
        {
            this.client.setMaxRetries(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/char/delete", this.getRequestPacket());
        }

        private function getRequestPacket():Object
        {
            var _local_1:Object = this.account.getCredentials();
            _local_1.charId = this.character.charId();
            _local_1.reason = 1;
            _local_1.isChallenger = this.seasonalEventModel.isChallenger;
            return (_local_1);
        }
