"
PolyMath is a Smalltalk project, similar to existing scientific libraries like NumPy, SciPy for Python or SciRuby for Ruby. PolyMath already provide the following basic functionalities:

    complex and quaternions extensions,
    random number generators,
    fuzzy algorithms,
    KDE-trees,
    Didier Besset's numerical methods,
    Ordinary Differential Equation (ODE) solvers.

"
Class {
	#name : #BaselineOfPolyMath,
	#superclass : #BaselineOf,
	#category : #BaselineOfPolyMath
}

{ #category : #baseline }
BaselineOfPolyMath >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec
			baseline: 'SMark' with: [
				spec repository: 'github://smarr/SMark:v1.0.4' ].

		spec package: 'ExtendedNumberParser'.
		spec package: 'Math-Accuracy-Core'.
		spec package: 'Math-ArbitraryPrecisionFloat' with: [
			spec requires: #('ExtendedNumberParser') ].
		spec package: 'Math-Core'.
		spec package: 'Math-Chromosome' with: [
			spec requires: #('Math-Core') ].
		spec package: 'Math-Core-Distribution' with: [
			spec requires: #('Math-Core') ].
		spec package: 'Math-Core-Process'.
		spec package: 'Math-DistributionForHistogram' with: [
			spec requires: #('Math-Core-Distribution') ].
		spec package: 'Math-DistributionGamma' with: [
			spec requires: #('Math-Core-Distribution') ].
		spec package: 'Math-DistributionBeta' with: [
			spec requires: #('Math-DistributionGamma') ].
		spec package: 'Math-KDTree'.
		spec package: 'Math-Benchmarks-KDTree' with: [
			spec requires: #('Math-KDTree' 'SMark') ].
		spec package: 'Math-Matrix'.
		spec package: 'Math-Number-Extensions'.
		spec package: 'Math-Permutation' with: [
			spec requires: #('Math-Core' 'Math-Matrix' 'Math-Core-Process') ].
		spec package: 'Math-Physics-Constants'.
		spec package: 'Math-Quantile'.
		spec package: 'Math-Random'.
		spec package: 'Math-Series'.
		spec package: 'Math-StatisticalMoments' with: [
			spec requires: #('Math-Core' 'Math-DistributionForHistogram') ].
		spec package: 'Math-Polynomials' with: [
			spec requires: #('Math-Core' 'Math-Core-Process' 'Math-Core-Distribution' 'Math-DistributionGamma' 'Math-DistributionBeta' 'Math-DistributionForHistogram' 'Math-StatisticalMoments' 'Math-Series') ].
		spec package: 'Math-Numerical' with: [
			spec requires: #('Math-Core' 'Math-Core-Process' 'Math-Core-Distribution' 'Math-DistributionGamma' 'Math-DistributionBeta' 'Math-DistributionForHistogram' 'Math-StatisticalMoments' 'Math-Series') ].
		spec package: 'Math-PrincipalComponentAnalysis' with: [
			spec requires: #('Math-Numerical' 'Math-Matrix' 'Math-Polynomials') ].
		spec package: 'Math-ODE' with: [
			spec requires: #('Math-Numerical' 'Math-Matrix' 'Math-Polynomials') ].
		spec package: 'Math-Accuracy-ODE' with: [
			spec requires: #('Math-ODE') ].
		spec package: 'Math-Benchmarks-ODE' with: [
			spec requires: #('Math-ODE' 'SMark') ].
		spec package: 'Math-AutomaticDifferenciation' with: [
			spec requires: #('Math-Numerical' 'Math-Matrix') ].
		spec package: 'Math-Clustering' with: [
			spec requires: #('Math-Numerical' 'Math-Core-Process' 'Math-Matrix') ].
		spec package: 'Math-KolmogorovSmirnov' with: [
			spec requires: #('Math-Numerical' 'Math-Polynomials') ].
		spec package: 'Math-KernelSmoothing' with: [
			spec requires: #('Math-Quantile' 'Math-Numerical' 'Math-Polynomials') ].
		spec package: 'Math-FunctionFit' with: [
			spec requires: #('Math-Numerical' 'Math-Chromosome' 'Math-Accuracy-Core' 'Math-Core' 'Math-Matrix' 'Math-Polynomials') ].
		spec package: 'Math-Complex' with: [
			spec requires: #('Math-Numerical' 'Math-Polynomials') ].
		spec package: 'Math-Quaternion' with: [
			spec requires: #('Math-Complex' 'Math-Numerical' 'Math-Polynomials') ].
		spec package: 'Math-FastFourierTransform' with: [
			spec requires: #('Math-Complex') ].
		spec package: 'Math-TSNE'.
		spec package: 'Math-Tests-Accuracy' with: [
			spec requires: #('Math-Accuracy-Core') ].
		spec package: 'Math-Tests-ArbitraryPrecisionFloat' with: [
			spec requires: #('Math-ArbitraryPrecisionFloat') ].
		spec package: 'Math-Tests-AutomaticDifferenciation' with: [
			spec requires: #('Math-AutomaticDifferenciation' 'Math-Matrix') ].
		spec package: 'Math-Tests-Complex' with: [
			spec requires: #('Math-Complex') ].
		spec package: 'Math-Tests-Core' with: [
			spec requires: #('Math-Core') ].
		spec package: 'Math-Tests-Core-Distribution' with: [
			spec requires: #('Math-Core-Distribution') ].
		spec package: 'Math-Tests-Core-Process' with: [
			spec requires: #('Math-Core-Process') ].
		spec package: 'Math-Tests-FastFourierTransform' with: [
			spec requires: #('Math-FastFourierTransform' 'Math-Numerical' 'Math-Polynomials') ].
		spec package: 'Math-Tests-FunctionFit'.
		spec package: 'Math-Tests-KDTree' with: [
			spec requires: #('Math-KDTree') ].
		spec package: 'Math-Tests-KernelSmoothing' with: [
			spec requires: #('Math-KernelSmoothing') ].
		spec package: 'Math-Tests-KolmogorovSmirnov' with: [
			spec requires: #('Math-Numerical' 'Math-KolmogorovSmirnov' 'Math-Polynomials') ].
		spec package: 'Math-Tests-Matrix' with: [
			spec requires: #('Math-Core' 'Math-Numerical' 'Math-StatisticalMoments' 'Math-Matrix' 'Math-Polynomials') ].
		spec package: 'Math-Tests-Number-Extensions' with: [
			spec requires: #('Math-Number-Extensions') ].
		spec package: 'Math-Tests-ODE' with: [
			spec requires: #('Math-ODE') ].
		spec package: 'Math-Tests-Permutation' with: [
			spec requires: #('Math-Permutation') ].
		spec package: 'Math-Tests-PrincipalComponentAnalysis' with: [
			spec requires: #('Math-PrincipalComponentAnalysis') ].
		spec package: 'Math-Tests-Quantile' with: [
			spec requires: #('Math-Quantile') ].
		spec package: 'Math-Tests-Polynomials' with: [
			spec requires: #('Math-Polynomials') ].
		spec package: 'Math-Tests-Quaternion' with: [
			spec requires: #('Math-Quaternion') ].
		spec package: 'Math-Tests-Random' with: [
			spec requires: #('Math-Random') ].
		spec package: 'Math-Tests-TSNE' with: [
			spec requires: #('Math-TSNE') ].
		spec package: 'Math-UtilsDataServer'.
		spec package: 'Math-Tests-Numerical' with: [
			spec requires: #('Math-Numerical' 'Math-UtilsDataServer') ].
		spec package: 'Math-Tests-Clustering' with: [
			spec requires: #('Math-Clustering' 'Math-Core' 'Math-Core-Distribution' 'Math-UtilsDataServer') ].
	]
]

{ #category : #accessing }
BaselineOfPolyMath >> projectClass [
	^ [ self class environment at: #MetacelloCypressBaselineProject ]
		on: NotFound
		do: [ super projectClass ]
]
