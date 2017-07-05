(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4352161904349858279061891153105534613132476806640625p407 {- 1960039473068609 407 (-4.74379e+122)}
; Y = 1.3100765660044491056623883196152746677398681640625p-427 {+ 1396460707113960 -427 (3.77997e-129)}
; -1.4352161904349858279061891153105534613132476806640625p407 > 1.3100765660044491056623883196152746677398681640625p-427 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110010110 #b0110111101101010010101000000100010011011101001000001)))
(assert (= y (fp #b0 #b01001010100 #b0100111101100001001011011000011000111110101111101000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
