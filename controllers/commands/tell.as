        private function onPrivateMessage(_arg_1:Event):void
        {
            var _local_2:ShowChatInputSignal = StaticInjectorContext.getInjector().getInstance(ShowChatInputSignal);
            _local_2.dispatch(true, (("/tell " + this.playerName_) + " "));
            remove();
        }
