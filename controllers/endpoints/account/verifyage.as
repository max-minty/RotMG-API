        private function sendVerifyToServer():void
        {
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/account/verifyage", this.makeDataPacket());
        }

        private function makeDataPacket():Object
        {
            var _local_1:Object = this.account.getCredentials();
            _local_1.isAgeVerified = 1;
            return (_local_1);
        }
