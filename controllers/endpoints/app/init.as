        override protected function startTask():void
        {
            this.client.setMaxRetries(2);
            this.client.complete.addOnce(this.onComplete);
            this.client.sendRequest("/app/init", {"game_net":this.account.gameNetwork()});
        }
