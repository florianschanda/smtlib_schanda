(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.3265182570548910145902254953398369252681732177734375p-74 {+ 1470507500802071 -74 (7.02253e-023)}
; Y = 1.707299062906226350122551593813113868236541748046875p-443 {+ 3185391796143982 -443 (7.5166e-134)}
; 1.3265182570548910145902254953398369252681732177734375p-74 > 1.707299062906226350122551593813113868236541748046875p-443 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110110101 #b0101001110010110101100110101001110011001000000010111)))
(assert (= y (fp #b0 #b01001000100 #b1011010100010001100011010010011110101100011101101110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
