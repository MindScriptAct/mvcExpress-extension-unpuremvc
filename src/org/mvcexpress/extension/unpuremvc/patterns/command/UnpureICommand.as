/*
 PureMVC - Copyright(c) 2006-08 Futurescale, Inc., Some rights reserved.
 Your reuse is governed by the Creative Commons Attribution 3.0 United States License
 */
package org.mvcexpress.extension.unpuremvc.patterns.command {
import org.mvcexpress.extension.unpuremvc.patterns.observer.UnpureNotification;

/**
 * The interface definition for a PureMVC Command.
 *
 * @see org.mvcexpress.extension.unpuremvc.interfaces INotification
 */
public interface UnpureICommand {
	/**
	 * Execute the <code>ICommand</code>'s logic to handle a given <code>INotification</code>.
	 *
	 * @param note an <code>INotification</code> to handle.
	 */
	function execute(notification:UnpureNotification):void;
}
}