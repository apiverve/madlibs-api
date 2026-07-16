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
        /// Story category
        /// </summary>
        [JsonProperty("category")]
        public string Category { get; set; }

        /// <summary>
        /// Number of stories
        /// </summary>
        [JsonProperty("count")]
        public int? Count { get; set; }
    }
}
