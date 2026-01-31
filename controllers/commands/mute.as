        private function onMute(_arg_1:Event):void
        {
            this.gs_.gsc_.playerText(("/mute " + this.player_.name_));
            remove();
        }
