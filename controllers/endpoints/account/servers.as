    public class Server 
    {

        public static const NORMAL_SERVER:int = 0;
        public static const CHALLENGER_SERVER:int = 1;

        public var name:String;
        public var address:String;
        public var port:int;
        public var latLong:LatLong;
        public var usage:Number;
        public var isAdminOnly:Boolean;
