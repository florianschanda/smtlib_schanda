(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.479025632742747120573767460882663726806640625p617 {+ 2157339661121152 617 (8.0442e+185)}
; Y = -1.89438107258388033216078838449902832508087158203125p-149 {- 4027934265215988 -149 (-2.65459e-045)}
; 1.479025632742747120573767460882663726806640625p617 > -1.89438107258388033216078838449902832508087158203125p-149 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001101000 #b0111101010100001011011001000001010010011011010000000)))
(assert (= y (fp #b1 #b01101101010 #b1110010011110110001010000111000011101000101111110100)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
