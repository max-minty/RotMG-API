        private function onInvitedToGuild(_arg_1:InvitedToGuild):void
        {
            if (Parameters.data_.showGuildInvitePopup)
            {
                gs_.hudView.interactPanel.setOverride(new GuildInvitePanel(gs_, _arg_1.name_, _arg_1.guildName_));
            };
            this.addTextLine.dispatch(ChatMessage.make("", (((((("You have been invited by " + _arg_1.name_) + " to join the guild ") + _arg_1.guildName_) + '.\n  If you wish to join type "/join ') + _arg_1.guildName_) + '"')));
        }
