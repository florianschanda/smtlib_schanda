(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 0.522214362668671494560612700297497212886810302734375p-1022 {+ 2351844409122150 -1023 (1.16197e-308)}
; Y = -1.363227418103637234025882207788527011871337890625p866 {- 1635830864822288 866 (-6.70725e+260)}
; 0.522214362668671494560612700297497212886810302734375p-1022 < -1.363227418103637234025882207788527011871337890625p866 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b1000010110101111110101110010100100101001110101100110)))
(assert (= y (fp #b1 #b11101100001 #b0101110011111100011110001101100111000100000000010000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
