(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9828919580797819133266557400929741561412811279296875p-69 {- 4426551856153563 -69 (-3.35915e-021)}
; Y = 1.458038869864186626301716387388296425342559814453125p-628 {+ 2062823683641554 -628 (1.30898e-189)}
; -1.9828919580797819133266557400929741561412811279296875p-69 = 1.458038869864186626301716387388296425342559814453125p-628 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110111010 #b1111101110011110110011101010111101110100001111011011)))
(assert (= y (fp #b0 #b00110001011 #b0111010101000010000010010000111001011101000011010010)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
