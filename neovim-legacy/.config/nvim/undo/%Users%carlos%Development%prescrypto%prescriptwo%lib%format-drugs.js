Vim�UnDo� 
wԓ�=y�� �w5�11�	�\���o��\   ]                                   _�    _�                     .        ����                                                                                                                                                                                                                                                                                                                                                             _�     �               ^   3const { mapKeys, partialRight } = require('lodash')   5const { flow, map, camelCase } = require('lodash/fp')   +const parseArray = require('./parse-array')       /**   0 * A drug and its metadata straight from the API    * @typedef {Object} RawDrug   + * @property {string} brand - Brand of drug   7 * @property {string} description - Description of drug   ) * @property {string} fraction - Fraction   / * @property {string} image_url - Image of drug   D * @property {string} measure_units - Unit in which drug is measured   > * @property {string} molecule - Molecules drug is composed of   ; * @property {string} package_desc - Description on package   9 * @property {string} package_detail - Details of packagr   @ * @property {string} package_detail_quantity - Quantity of drug   1 * @property {string} retail_price - Retail price   3 * @property {string} unique_id - Unique ID of drug   1 * @property {string} order_id - Order ID of drug   + * @property {string} ad_id - Ad ID of drug    */       /**   / * A drug and its metadata formatted and parsed    * @typedef {Object} Drug   + * @property {string} brand - Brand of drug   7 * @property {string} description - Description of drug   ) * @property {number} fraction - Fraction   . * @property {string} imageUrl - Image of drug   C * @property {string} measureUnits - Unit in which drug is measured   @ * @property {string[]} molecule - Molecules drug is composed of   : * @property {string} packageDesc - Description on package   8 * @property {string} packageDetail - Details of packagr   > * @property {number} packageDetailQuantity - Quantity of drug   9 * @property {number} retailPrice - Retail price in cents   2 * @property {string} uniqueId - Unique ID of drug   0 * @property {string} orderId - Order ID of drug   * * @property {string} adId - Ad ID of drug    */       /**   ( * Parses arrays from drugs API response   4 * @param {RawDrug[]} drugs - The raw array of drugs    * @returns {Drug[]}    */       )/** TODO order drugs by "order_id" key */   .module.exports = function formatDrugs(drugs) {     return map(value => {   9    // Convert keys to camelcase and remove unneeded keys   K    const drug = flow(partialRight(mapKeys, (v, k) => camelCase(k)))(value)       +    // Parse string arrays as actual arrays   @    if (drug.molecule !== null && drug.molecule !== undefined) {   
      try{   3          drug.molecule = parseArray(drug.molecule)           } catch {             drug.molecule = []   	        }                } else {         drug.molecule = []       }        // Get the ingredients array   F    if (drug.ingredients !== null && drug.ingredients !== undefined) {   A      // TODO remove this conditional when there's no legacy left   1      if (!(drug.ingredients instanceof Array)) {           try{   9          drug.ingredients = parseArray(drug.ingredients)           } catch {             drug.ingredients = []   	        }         }       } else {         drug.ingredients = []       }       &    // Parse numbers as actual numbers   @    if (drug.fraction === null || drug.fraction === undefined) {         drug.fraction = '0'       }   C    drug.packageDetailQuantity = Number(drug.packageDetailQuantity)   '    drug.orderId = Number(drug.orderId)       (    // Parse currency to have 2 decimals   F    if (drug.retailPrice !== null && drug.retailPrice !== undefined) {   <      drug.retailPrice = Number(drug.retailPrice).toFixed(2)       } else {         drug.retailPrice = null       }           return drug     })(drugs)   }5�_�                     .        ����                                                                                                                                                                                                                                                                                                                                                             _�    �   6   D   ^      
      try{   3          drug.molecule = parseArray(drug.molecule)           } catch {             drug.molecule = []   	        }                } else {         drug.molecule = []       }        // Get the ingredients array   F    if (drug.ingredients !== null && drug.ingredients !== undefined) {   A      // TODO remove this conditional when there's no legacy left   1      if (!(drug.ingredients instanceof Array)) {           try{5��