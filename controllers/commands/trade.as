        private function onTradeMessage(_arg_1:Event):void
        {
            var _local_2:ShowChatInputSignal = StaticInjectorContext.getInjector().getInstance(ShowChatInputSignal);
            _local_2.dispatch(true, ("/trade " + this.playerName_));
            remove();
        }
