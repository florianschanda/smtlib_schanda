(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.821230025663575613492639604373835027217864990234375p-94 {+ 3698491237563942 -94 (9.19486e-029)}
; Y = 1.4526474538229139366052322657196782529354095458984375p-421 {+ 2038542904367079 -421 (2.68245e-127)}
; 1.821230025663575613492639604373835027217864990234375p-94 = 1.4526474538229139366052322657196782529354095458984375p-421 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110100001 #b1101001000111100001000011000011010110111111000100110)))
(assert (= y (fp #b0 #b01001011010 #b0111001111100000101101000001101011001001011111100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
