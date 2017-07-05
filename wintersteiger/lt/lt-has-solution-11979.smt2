(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.979182272627431959932664540247060358524322509765625p668 {+ 4409844918132698 668 (2.42395e+201)}
; Y = -1.897804041124766971648796243243850767612457275390625p-148 {- 4043349945061226 -148 (-5.31878e-045)}
; 1.979182272627431959932664540247060358524322509765625p668 < -1.897804041124766971648796243243850767612457275390625p-148 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010011011 #b1111101010101011101100000111110111000001111111011010)))
(assert (= y (fp #b1 #b01101101011 #b1110010111010110011111000101001011011000111101101010)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
