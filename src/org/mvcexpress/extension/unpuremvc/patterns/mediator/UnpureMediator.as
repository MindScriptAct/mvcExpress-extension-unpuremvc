/*
 PureMVC - Copyright(c) 2006-08 Futurescale, Inc., Some rights reserved.
 Your reuse is governed by the Creative Commons Attribution 3.0 United States License
 */
package org.mvcexpress.extension.unpuremvc.patterns.mediator {
import org.mvcexpress.extension.unpuremvc.patterns.facade.UnpureFacade;
import org.mvcexpress.extension.unpuremvc.patterns.observer.*;

/**
 * A base <code>IMediator</code> implementation.
 *
 * @see org.mvcexpress.extension.unpuremvc.core.view.View View
 */
public class UnpureMediator {

	// the mediator name
	protected var mediatorName:String;

	// The view component
	protected var viewComponent:Object;

	/**
	 * The name of the <code>Mediator</code>.
	 *
	 * <P>
	 * Typically, a <code>Mediator</code> will be written to serve
	 * one specific control or group controls and so,
	 * will not have a need to be dynamically named.</P>
	 */
	public static const NAME:String = 'Mediator';

	/**
	 * Constructor.
	 */
	public function UnpureMediator(mediatorName:String = null, viewComponent:Object = null) {
//		this.mediatorName = (mediatorName != null) ? mediatorName : NAME;
//		this.viewComponent = viewComponent;
	}

	/**
	 * Get the name of the <code>Mediator</code>.
	 * @return the Mediator name
	 */
	public function getMediatorName():String {
		return mediatorName;
	}

	/**
	 * Set the <code>IMediator</code>'s view component.
	 *
	 * @param Object the view component
	 */
	public function setViewComponent(viewComponent:Object):void {
//		this.viewComponent = viewComponent;
	}

	/**
	 * Get the <code>Mediator</code>'s view component.
	 *
	 * <P>
	 * Additionally, an implicit getter will usually
	 * be defined in the subclass that casts the view
	 * object to a type, like this:</P>
	 *
	 * <listing>
	 *        private function get comboBox : mx.controls.ComboBox
	 *        {
		 *			return viewComponent as mx.controls.ComboBox;
		 *		}
	 * </listing>
	 *
	 * @return the view component
	 */
	public function getViewComponent():Object {
		return viewComponent;
	}

	/**
	 * List the <code>INotification</code> names this
	 * <code>Mediator</code> is interested in being notified of.
	 *
	 * @return Array the list of <code>INotification</code> names
	 */
	public function listNotificationInterests():Array {
		return [];
	}

	/**
	 * Handle <code>INotification</code>s.
	 *
	 * <P>
	 * Typically this will be handled in a switch statement,
	 * with one 'case' entry per <code>INotification</code>
	 * the <code>Mediator</code> is interested in.
	 */
	public function handleNotification(notification:UnpureNotification):void {
	}

	/**
	 * Called by the View when the Mediator is registered
	 */
	public function onRegister():void {
	}

	/**
	 * Called by the View when the Mediator is removed
	 */
	public function onRemove():void {
	}

	//----------------------------------
	//	class Notifier
	//----------------------------------

	// Local reference to the Facade Singleton
	protected var facade:UnpureFacade = UnpureFacade.getInstance();

	/**
	 * Create and send an <code>INotification</code>.
	 *
	 * <P>
	 * Keeps us from having to construct new INotification
	 * instances in our implementation code.
	 * @param notificationName the name of the notiification to send
	 * @param body the body of the notification (optional)
	 * @param type the type of the notification (optional)
	 */
	public function sendNotification(notificationName:String, body:Object = null, type:String = null):void {
		facade.sendNotification(notificationName, body, type);
	}

}
}