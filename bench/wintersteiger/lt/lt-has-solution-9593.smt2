(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2249639355855193034727790291071869432926177978515625p-768 {- 1013147496474745 -768 (-7.89017e-232)}
; Y = -1.0425295375199852276892897862126119434833526611328125p-111 {- 191536009327245 -111 (-4.01568e-034)}
; -1.2249639355855193034727790291071869432926177978515625p-768 < -1.0425295375199852276892897862126119434833526611328125p-111 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011111111 #b0011100110010111001111001000101000011110100001111001)))
(assert (= y (fp #b1 #b01110010000 #b0000101011100011001101110011110011000011001010001101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
