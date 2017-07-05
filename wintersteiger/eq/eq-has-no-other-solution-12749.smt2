(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2372195684458866526966858145897276699542999267578125p792 {- 1068341960057885 792 (-3.22258e+238)}
; Y = 1.0319306510219810046891097954357974231243133544921875p-162 {+ 143802868044291 -162 (1.76519e-049)}
; -1.2372195684458866526966858145897276699542999267578125p792 = 1.0319306510219810046891097954357974231243133544921875p-162 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100010111 #b0011110010111010011010111111000001110010010000011101)))
(assert (= y (fp #b0 #b01101011101 #b0000100000101100100110110110110111100001001000000011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
