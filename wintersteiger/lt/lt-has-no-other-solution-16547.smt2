(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0698024936658907524389405807596631348133087158203125p14 {- 314362484463237 14 (-17527.6)}
; Y = 1.971594763129931759948476610588841140270233154296875p-87 {+ 4375673813187086 -87 (1.27411e-026)}
; -1.0698024936658907524389405807596631348133087158203125p14 < 1.971594763129931759948476610588841140270233154296875p-87 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000001101 #b0001000111011110100100111000001101111001011010000101)))
(assert (= y (fp #b0 #b01110101000 #b1111100010111010011011110011010010011011101000001110)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
