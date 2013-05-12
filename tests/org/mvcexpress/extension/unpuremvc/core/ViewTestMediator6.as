/*
 PureMVC - Copyright(c) 2006-08 Futurecale, Inc., Some rights reserved.
 Your reuse is governed by Creative Commons Attribution 2.5 License
*/
package org.mvcexpress.extension.unpuremvc.core
{
	import org.mvcexpress.extension.unpuremvc.interfaces.IMediator;
	import org.mvcexpress.extension.unpuremvc.interfaces.INotification;
	import org.mvcexpress.extension.unpuremvc.patterns.mediator.UnpureMediator;

   	/**
  	 * A Mediator class used by ViewTest.
  	 *
  	 * @see org.mvcexpress.extension.unpuremvc.core.view.ViewTest ViewTest
  	 */
	public class ViewTestMediator6 extends UnpureMediator implements IMediator
	{
		/**
		 * The Mediator base name
		 */
		public static const NAME:String = 'ViewTestMediator6';

		/**
		 * Constructor
		 */
		public function ViewTestMediator6( name:String, view:Object ) {
			super( name, view );
		}

		override public function listNotificationInterests():Array
		{
			return [ ViewTest.NOTE6 ];
		}

		override public function handleNotification( note:INotification ):void
		{
			facade.removeMediator(getMediatorName());
		}

		override public function onRemove():void
		{
			viewTest.counter++;
		}

		public function get viewTest():ViewTest
		{
			return viewComponent as ViewTest;
		}
	}
}