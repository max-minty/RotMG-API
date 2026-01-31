        override protected function startTask():void
        {
            this.language = this.model.getLanguageFamily();
            this.client.complete.addOnce(this.onComplete);
            this.client.setMaxRetries(3);
            this.client.sendRequest("/app/getLanguageStrings", {"languageType":this.language});
        }
