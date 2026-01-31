case "/resetDailyQuests":
    if (this.player.isAdmin())
    {
        _local_1 = { }
        ;
        MoreObjectUtil.addToObject(_local_1, this.account.getCredentials());
        this.client.sendRequest("/dailyquest/resetDailyQuestsAdmin", _local_1);
        this.addTextLine.dispatch(ChatMessage.make(Parameters.SERVER_CHAT_NAME, "Restarting daily quests. Please refresh game."));
    }
    ;
    return;
