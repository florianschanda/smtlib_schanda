(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7548042802816701257739850916550494730472564697265625p-519 {+ 3399336275414185 -519 (1.02249e-156)}
; Y = 1.283714829363225451430707835243083536624908447265625p-722 {+ 1277737999799706 -722 (5.81851e-218)}
; 1.7548042802816701257739850916550494730472564697265625p-519 > 1.283714829363225451430707835243083536624908447265625p-722 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00111111000 #b1100000100111010110110100111001010110000110010101001)))
(assert (= y (fp #b0 #b00100101101 #b0100100010100001100010001111100110000001010110011010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
