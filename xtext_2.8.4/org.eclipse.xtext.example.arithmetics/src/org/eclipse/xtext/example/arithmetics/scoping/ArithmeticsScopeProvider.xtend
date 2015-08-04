/*
 * generated by Xtext
 */
package org.eclipse.xtext.example.arithmetics.scoping

import org.eclipse.emf.ecore.EObject
import org.eclipse.emf.ecore.EReference
import org.eclipse.xtext.scoping.impl.AbstractDeclarativeScopeProvider
import org.eclipse.xtext.scoping.impl.FilteringScope

/**
 * This class contains custom scoping description.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#scoping
 * on how and when to use it.
 */
class ArithmeticsScopeProvider extends AbstractDeclarativeScopeProvider {
	
	/**
	 * we delegate to the default but filter out all descriptions with a qualified name (i.e. with '.' in the name)
	 */
	override getScope(EObject context, EReference reference) {
		val scope = super.getScope(context, reference);
		new FilteringScope(scope, [ 
			it!=null && name != null && name.segmentCount==1
		])
	}

}
