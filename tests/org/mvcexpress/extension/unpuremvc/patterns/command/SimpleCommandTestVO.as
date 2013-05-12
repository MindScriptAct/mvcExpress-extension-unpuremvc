/*
 PureMVC - Copyright(c) 2006-08 Futurecale, Inc., Some rights reserved.
 Your reuse is governed by Creative Commons Attribution 2.5 License
 */
package org.mvcexpress.extension.unpuremvc.patterns.command {
/**
 * A utility class used by SimpleCommandTest.
 *
 * @see org.mvcexpress.extension.unpuremvc.patterns.command.SimpleCommandTest SimpleCommandTest
 * @see org.mvcexpress.extension.unpuremvc.patterns.command.SimpleCommandTestCommand SimpleCommandTestCommand
 */
public class SimpleCommandTestVO {
	/**
	 * Constructor.
	 *
	 * @param input the number to be fed to the SimpleCommandTestCommand
	 */
	public function SimpleCommandTestVO(input:Number) {
		this.input = input;
	}

	public var input:Number;
	public var result:Number;
}
}