(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5323386373667802207165777872432954609394073486328125p628 {+ 2397440088879949 628 (1.70684e+189)}
; Y = -1.3980753774305696435220625062356702983379364013671875p805 {- 1792772121461683 805 (-2.98316e+242)}
; 1.5323386373667802207165777872432954609394073486328125p628 = -1.3980753774305696435220625062356702983379364013671875p805 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001110011 #b1000100001000111010110000100110111100011001101001101)))
(assert (= y (fp #b1 #b11100100100 #b0110010111101000010001001001011101101000001110110011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
