Vim�UnDo� fR����UR1x����΀���MC�)q��   d                                  ^�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             ^�~     �                   �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�    �              �   'use strict';   var util = require('util'),     xml2js = require('xml2js'),     axios = require('axios');           module.exports = {   "  load: function (url, callback) {       var $ = this;           axios.get(url, {         headers: {   �        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36 OPR/63.0.3368.75',   3        'accept': 'text/html,application/xhtml+xml'         }       }).then(function (res) {   ^      var parser = new xml2js.Parser({ trim: false, normalize: true, mergeAttrs: true });            ;      parser.parseString(res.data, function (err, result) {           if (err) {             console.log(err);             callback(err, null);           } else {   +          callback(null, $.parser(result));   	        }       	      });           }).catch(function (error) {         console.log(error);         callback(error, null);       });         },     parser: function (json) {   #    var channel = json.rss.channel;       var rss = { items: [] };   '    if (util.isArray(json.rss.channel))   $      channel = json.rss.channel[0];           if (channel.title) {   #      rss.title = channel.title[0];       }       if (channel.description) {   /      rss.description = channel.description[0];       }       if (channel.link) {          rss.url = channel.link[0];       }       '    // add rss.image via @dubyajaysmith       if (channel.image) {   &      rss.image = channel.image[0].url       }       0    if (!rss.image && channel["itunes:image"]) {   1      rss.image = channel['itunes:image'][0].href       }       J    rss.image = rss.image && Array.isArray(rss.image) ? rss.image[0] : '';           if (channel.item) {   (      if (!util.isArray(channel.item)) {   &        channel.item = [channel.item];         }   +      channel.item.forEach(function (val) {           var obj = {};   K        obj.title = !util.isNullOrUndefined(val.title) ? val.title[0] : '';   ]        obj.description = !util.isNullOrUndefined(val.description) ? val.description[0] : '';   R        obj.url = obj.link = !util.isNullOrUndefined(val.link) ? val.link[0] : '';       )        // Medium Support via @sstrubberg           if (val["guid"]) {   $          obj.guid = val["guid"][0];   	        }           if (val["category"]) {   ,          obj.category = val["category"][0];   	        }            if (val["dc:creator"]) {   0          obj.dc_creator = val["dc:creator"][0];   	        }           if (val["pubDate"]) {   *          obj.pubDate = val["pubDate"][0];   	        }   "        if (val["atom:updated"]) {   4          obj.atom_updated = val["atom:updated"][0];   	        }   %        if (val["content:encoded"]) {   :          obj.content_encoded = val["content:encoded"][0];   	        }   0        // End of Medium Support via @sstrubberg       %        if (val['itunes:subtitle']) {   :          obj.itunes_subtitle = val['itunes:subtitle'][0];   	        }   $        if (val['itunes:summary']) {   8          obj.itunes_summary = val['itunes:summary'][0];   	        }   #        if (val['itunes:author']) {   6          obj.itunes_author = val['itunes:author'][0];   	        }   %        if (val['itunes:explicit']) {   :          obj.itunes_explicit = val['itunes:explicit'][0];   	        }   %        if (val['itunes:duration']) {   :          obj.itunes_duration = val['itunes:duration'][0];   	        }   #        if (val['itunes:season']) {   6          obj.itunes_season = val['itunes:season'][0];   	        }   $        if (val['itunes:episode']) {   8          obj.itunes_episode = val['itunes:episode'][0];   	        }   (        if (val['itunes:episodeType']) {   @          obj.itunes_episodeType = val['itunes:episodeType'][0];   	        }           if (val.pubDate) {   2          //lets try basis js date parsing for now   3          obj.created = Date.parse(val.pubDate[0]);   	        }   #        if (val['media:content']) {   &          obj.media = val.media || {};   3          obj.media.content = val['media:content'];   	        }   %        if (val['media:thumbnail']) {   &          obj.media = val.media || {};   7          obj.media.thumbnail = val['media:thumbnail'];   	        }           if (val.enclosure) {             obj.enclosures = [];   +          if (!util.isArray(val.enclosure))   ,            val.enclosure = [val.enclosure];   6          val.enclosure.forEach(function (enclosure) {               var enc = {};   &            for (var x in enclosure) {   '              enc[x] = enclosure[x][0];               }   %            obj.enclosures.push(enc);             });       	        }           rss.items.push(obj);       	      });           }       return rss;         },   "  read: function (url, callback) {   $    return this.load(url, callback);     }       };5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^��     �                'use strict'5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^��    �                 "// Invoke 'strict' JavaScript mode5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             ^��     �         �      	        }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             ^��     �         �              �         �    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^��    �         �      +              httpsAgent: new https.Agent({   !        rejectUnauthorized: false   	      }),    5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             ^��     �          �       �          �    5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                         	       v   	    ^��     �          �      const name = 5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                         	       v   	    ^��    �          �      const https = require('https');5�_�   
                    
    ����                                                                                                                                                                                                                                                                                                                               	          
       V   
    ^��   	 �                        headers: {             'User-Agent':   �            'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36 OPR/63.0.3368.75',   3          accept: 'text/html,application/xhtml+xml'   
        },5�_�                    M        ����                                                                                                                                                                                                                                                                                                                            M   
       �   	       V   
    ^�    �   L   M       9   )        // Medium Support via @sstrubberg           if (val.guid) {              obj.guid = val.guid[0]   	        }           if (val.category) {   (          obj.category = val.category[0]   	        }            if (val['dc:creator']) {   /          obj.dc_creator = val['dc:creator'][0]   	        }           if (val.pubDate) {   &          obj.pubDate = val.pubDate[0]   	        }   "        if (val['atom:updated']) {   3          obj.atom_updated = val['atom:updated'][0]   	        }   %        if (val['content:encoded']) {   9          obj.content_encoded = val['content:encoded'][0]   	        }   0        // End of Medium Support via @sstrubberg       %        if (val['itunes:subtitle']) {   9          obj.itunes_subtitle = val['itunes:subtitle'][0]   	        }   $        if (val['itunes:summary']) {   7          obj.itunes_summary = val['itunes:summary'][0]   	        }   #        if (val['itunes:author']) {   5          obj.itunes_author = val['itunes:author'][0]   	        }   %        if (val['itunes:explicit']) {   9          obj.itunes_explicit = val['itunes:explicit'][0]   	        }   %        if (val['itunes:duration']) {   9          obj.itunes_duration = val['itunes:duration'][0]   	        }   #        if (val['itunes:season']) {   5          obj.itunes_season = val['itunes:season'][0]   	        }   $        if (val['itunes:episode']) {   7          obj.itunes_episode = val['itunes:episode'][0]   	        }   (        if (val['itunes:episodeType']) {   ?          obj.itunes_episodeType = val['itunes:episodeType'][0]   	        }           if (val.pubDate) {   3          // lets try basis js date parsing for now   2          obj.created = Date.parse(val.pubDate[0])   	        }   #        if (val['media:content']) {   %          obj.media = val.media || {}   2          obj.media.content = val['media:content']   	        }   %        if (val['media:thumbnail']) {   %          obj.media = val.media || {}   6          obj.media.thumbnail = val['media:thumbnail']   	        }5�_�                    \        ����                                                                                                                                                                                                                                                                                                                            M   
       M   	       V   
    ^�"     �   \   ^   `    5�_�                    $       ����                                                                                                                                                                                                                                                                                                                            M   
       M   	       V   
    ^�%     �   $   &   a    5�_�                           ����                                                                                                                                                                                                                                                                                                                            N   
       N   	       V   
    ^�(     �          c       �         c    �          b    5�_�                       M    ����                                                                                                                                                                                                                                                                                                                            O   
       O   	       V   
    ^�-    �         c    5�_�                           ����                                                                                                                                                                                                                                                                                                                            P   
       P   	       V   
    ^�/     �          d      N// From https://raw.githubusercontent.com/nasa8x/rss-to-json/master/src/rss.js5�_�                            ����                                                                                                                                                                                                                                                                                                                            P   
       P   	       V   
    ^�2     �                //5�_�                            ����                                                                                                                                                                                                                                                                                                                            O   
       O   	       V   
    ^�2    �         c    5�_�                     A        ����                                                                                                                                                                                                                                                                                                                            P   
       P   	       V   
    ^�     �               d   V// Adapted from https://raw.githubusercontent.com/nasa8x/rss-to-json/master/src/rss.js       const https = require('https')   const util = require('util')    const xml2js = require('xml2js')   const axios = require('axios')       module.exports = {   !  load: function(url, callback) {       const $ = this       	    axios         .get(url, {   %        httpsAgent: new https.Agent({   #          rejectUnauthorized: false   
        })         })         .then(function(res) {   *        const parser = new xml2js.Parser({             trim: false,             normalize: true,             mergeAttrs: true   
        })       <        parser.parseString(res.data, function(err, result) {             if (err) {               console.log(err)               callback(err, null)             } else {   ,            callback(null, $.parser(result))             }   
        })         })         .catch(function(error) {           console.log(error)           callback(error, null)         })     },         parser: function(json) {   "    let channel = json.rss.channel       const rss = { items: [] }   E    if (util.isArray(json.rss.channel)) channel = json.rss.channel[0]           if (channel.title) {   "      rss.title = channel.title[0]       }       if (channel.description) {   .      rss.description = channel.description[0]       }       if (channel.link) {         rss.url = channel.link[0]       }       '    // add rss.image via @dubyajaysmith       if (channel.image) {   &      rss.image = channel.image[0].url       }       0    if (!rss.image && channel['itunes:image']) {   1      rss.image = channel['itunes:image'][0].href       }       I    rss.image = rss.image && Array.isArray(rss.image) ? rss.image[0] : ''           if (channel.item) {   (      if (!util.isArray(channel.item)) {   %        channel.item = [channel.item]         }   *      channel.item.forEach(function(val) {           const obj = {}   J        obj.title = !util.isNullOrUndefined(val.title) ? val.title[0] : ''   B        obj.description = !util.isNullOrUndefined(val.description)             ? val.description[0]             : ''   >        obj.url = obj.link = !util.isNullOrUndefined(val.link)             ? val.link[0]             : ''               if (val.enclosure) {             obj.enclosures = []   K          if (!util.isArray(val.enclosure)) val.enclosure = [val.enclosure]   5          val.enclosure.forEach(function(enclosure) {               const enc = {}   (            for (const x in enclosure) {   &              enc[x] = enclosure[x][0]               }   $            obj.enclosures.push(enc)             })   	        }           rss.items.push(obj)         })       }       return rss     },       !  read: function(url, callback) {   #    return this.load(url, callback)     }   }5��