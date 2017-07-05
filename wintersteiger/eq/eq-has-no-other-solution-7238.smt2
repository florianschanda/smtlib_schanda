(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.903870888236828928796740001416765153408050537109375p-294 {- 4070672595454422 -294 (-5.98162e-089)}
; Y = -1.4796062653983310664074224405339919030666351318359375p-923 {- 2159954598132479 -923 (-2.0867e-278)}
; -1.903870888236828928796740001416765153408050537109375p-294 = -1.4796062653983310664074224405339919030666351318359375p-923 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01011011001 #b1110011101100100000101010010000011001000100111010110)))
(assert (= y (fp #b1 #b00001100100 #b0111101011000111011110011110100011010111101011111111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
