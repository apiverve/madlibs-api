using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MadLibsGenerator
{
    /// <summary>
    /// Query options for the Mad Libs Generator API
    /// </summary>
    public class MadLibsGeneratorQueryOptions
    {
        /// <summary>
        /// Category: random, adventure, funny, fairytale, scifi, romance, horror
        /// Example: funny
        /// </summary>
        [JsonProperty("category")]
        public string Category { get; set; }

        /// <summary>
        /// Number of stories (1-5)
        /// Example: 1
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }
    }
}
