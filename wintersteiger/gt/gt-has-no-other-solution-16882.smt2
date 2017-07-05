(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0885088103469138243184488601400516927242279052734375p-769 {- 398608245297367 -769 (-3.50562e-232)}
; Y = -1.487858574638170949810955789871513843536376953125p963 {- 2197119694949968 963 (-1.15997e+290)}
; -1.0885088103469138243184488601400516927242279052734375p-769 > -1.487858574638170949810955789871513843536376953125p963 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00011111110 #b0001011010101000100000110110110111011001000011010111)))
(assert (= y (fp #b1 #b11111000010 #b0111110011100100010011001010111100100100111001010000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
