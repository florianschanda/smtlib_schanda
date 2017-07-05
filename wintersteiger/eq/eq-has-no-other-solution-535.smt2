(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8550859240963202267948872759006917476654052734375p898 {- 3850964649129944 898 (-3.92013e+270)}
; Y = 1.3100513626109997478152990879607386887073516845703125p-400 {+ 1396347201120613 -400 (5.07329e-121)}
; -1.8550859240963202267948872759006917476654052734375p898 = 1.3100513626109997478152990879607386887073516845703125p-400 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110000001 #b1101101011100110111010010011111101000011011111011000)))
(assert (= y (fp #b0 #b01001101111 #b0100111101011111100001101010111001111110100101100101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
