(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5262212145364129067814928930602036416530609130859375p691 {+ 2369889665700639 691 (1.56799e+208)}
; Y = 1.8874978115846710036151989697827957570552825927734375p691 {+ 3996934813544855 691 (1.93916e+208)}
; 1.5262212145364129067814928930602036416530609130859375p691 < 1.8874978115846710036151989697827957570552825927734375p691 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010110010 #b1000011010110110011011101111101011100101001100011111)))
(assert (= y (fp #b0 #b11010110010 #b1110001100110011000011100111110000000111000110010111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
