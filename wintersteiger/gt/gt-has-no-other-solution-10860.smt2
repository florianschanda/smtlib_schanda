(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0275820077544659536528115495457313954830169677734375p-751 {+ 124218319845143 -751 (8.6754e-227)}
; Y = -1.8019363486747150826516872257343493402004241943359375p-734 {- 3611600241066303 -734 (-1.99399e-221)}
; 1.0275820077544659536528115495457313954830169677734375p-751 > -1.8019363486747150826516872257343493402004241943359375p-734 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100010000 #b0000011100001111100111010100110101000011011100010111)))
(assert (= y (fp #b1 #b00100100001 #b1100110101001011101100110101011100001000000100111111)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
