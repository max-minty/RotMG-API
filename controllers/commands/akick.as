        private function onKickMultiBox(_arg_1:Event):void
        {
            this.gs_.gsc_.playerText((("/akick " + this.player_.name_) + " Multiboxing"));
            remove();
        }

        private function onKickRWT(_arg_1:Event):void
        {
            this.gs_.gsc_.playerText((("/akick " + this.player_.name_) + " RWT"));
            remove();
        }

        private function onKickCheat(_arg_1:Event):void
        {
            this.gs_.gsc_.playerText((("/akick " + this.player_.name_) + " Cheating"));
            remove();
        }
