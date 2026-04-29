(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.836708427542266264254067209549248218536376953125p-315 {+ 3768199762497104 -315 (2.75164e-095)}
; Y = 1.0546850770851807777006570177036337554454803466796875p-826 {+ 246279692783547 -826 (2.35693e-249)}
; 1.836708427542266264254067209549248218536376953125p-315 > 1.0546850770851807777006570177036337554454803466796875p-826 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011000100 #b1101011000110010100001100000010010010100111001010000)))
(assert (= y (fp #b0 #b00011000101 #b0000110111111111110101110101100110101000111110111011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
