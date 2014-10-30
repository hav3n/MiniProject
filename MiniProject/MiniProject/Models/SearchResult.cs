using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MiniProject
{
    public class SearchResult
    {
        [JsonProperty("website")]
        public string Website { get; set; }
        [JsonProperty("url")]
        public string Url { get; set; }
        [JsonProperty("price")]
        public string Price {get;set;}
        [JsonProperty("image")]
        public string ImageURL { get; set; }
    }
}