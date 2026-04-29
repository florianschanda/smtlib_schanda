(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.9764136614298661864808082100353203713893890380859375p-200 {- 4397376201775007 -200 (-1.22993e-060)}
; Y = 1.0798407077892544503328053906443528831005096435546875p379 {+ 359570581848683 379 (1.32962e+114)}
; -1.9764136614298661864808082100353203713893890380859375p-200 < 1.0798407077892544503328053906443528831005096435546875p379 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100110111 #b1111100111110110001111101110011100110101011110011111)))
(assert (= y (fp #b0 #b10101111010 #b0001010001110000011100001100110011011000001001101011)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
