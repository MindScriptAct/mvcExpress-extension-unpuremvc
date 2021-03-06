package org.puremvc.as3.multicore.core {
import org.mvcexpress.extension.unpuremvc.patterns.proxy.UnpureProxy;

public class ModelTestProxy extends UnpureProxy {
	public static const NAME:String = 'ModelTestProxy';
	public static const ON_REGISTER_CALLED:String = 'onRegister Called';
	public static const ON_REMOVE_CALLED:String = 'onRemove Called';

	public function ModelTestProxy() {
		super(NAME, '');
	}

	override protected function onRegister():void {
		setData(ON_REGISTER_CALLED);
	}

	override protected function onRemove():void {
		setData(ON_REMOVE_CALLED);
	}
}
}