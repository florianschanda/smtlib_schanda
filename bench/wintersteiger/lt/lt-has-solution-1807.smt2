(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.3283198736602408462914581832592375576496124267578125p929 {- 1478621260674589 929 (-6.02794e+279)}
; Y = -1.5939190643055010099260471179150044918060302734375p420 {- 2674773676694488 420 (-4.31583e+126)}
; -1.3283198736602408462914581832592375576496124267578125p929 < -1.5939190643055010099260471179150044918060302734375p420 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110100000 #b0101010000001100110001010110111111111111011000011101)))
(assert (= y (fp #b1 #b10110100011 #b1001100000001011000101000110110110101001101111011000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
