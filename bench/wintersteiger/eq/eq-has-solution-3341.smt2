(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7985753300080349337264351561316289007663726806640625p-735 {+ 3596463558651457 -735 (9.95135e-222)}
; Y = 1.8602024926714373354030840346240438520908355712890625p-70 {+ 3874007625458257 -70 (1.57565e-021)}
; 1.7985753300080349337264351561316289007663726806640625p-735 = 1.8602024926714373354030840346240438520908355712890625p-70 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100100000 #b1100110001101111011011101100110111000110111001000001)))
(assert (= y (fp #b0 #b01110111001 #b1101110000110110001110110000010111110110001001010001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
