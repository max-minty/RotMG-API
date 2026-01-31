        private function onUnMute(_arg_1:Event):void
        {
            this.gs_.gsc_.playerText(("/unmute " + this.player_.name_));
            remove();
        }
