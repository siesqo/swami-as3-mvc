﻿/** * Settings package * * @author Jeroen Desloovere <info@jeroendesloovere.be> */package be.swami.core{	/**	 * Swami imports	 */	import be.swami.core.Model;	import be.swami.library.DataObject;	/**	 * Settings class	 */	public class Settings extends Model	{		// init variables		private var settings:Object = new Object();		/**		 * Settings constructor		 */		public function Settings(){}		/**		 * Get a setting for a module		 *		 * @param string module 				The module you saved this value for.		 * @param string name 					The name you have given for the value.		 * @param mixed[optional] defaultValue 	The default value to return when value not exists.		 * @return mixed		 */		public function get(module:String, name:String, defaultValue = null)		{			// value not exists			if(this.settings.module === undefined || this.settings.module.get(name) === null)			{				// add new value and return it				return set(module, name, defaultValue);			}			// return founded value			else return this.settings.module.get(name);		}		/**		 * Set setting for a module		 *		 * @param string module 				The module you saved this value for.		 * @param string name 					The name you have given for the value.		 * @param mixed value 					The value to return when value not exists.		 * @return mixed		 */		public function set(module:String, name:String, value)		{			// module not already set			if(this.settings.module === undefined)			{				// add module as new object				this.settings.module = new DataObject();			}			// set value for module object and return it			return this.settings.module.set(name, value);		}	}}