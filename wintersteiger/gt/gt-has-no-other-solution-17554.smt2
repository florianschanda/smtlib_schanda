(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8840561016602042077039413925376720726490020751953125p-585 {+ 3981434730011509 -585 (1.48781e-176)}
; Y = 1.48101191920628050269215236767195165157318115234375p-262 {+ 2166285100098172 -262 (1.99848e-079)}
; 1.8840561016602042077039413925376720726490020751953125p-585 > 1.48101191920628050269215236767195165157318115234375p-262 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110110110 #b1110001001010001100000000010110001110101101101110101)))
(assert (= y (fp #b0 #b01011111001 #b0111101100100011100110001101110111111010001001111100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
