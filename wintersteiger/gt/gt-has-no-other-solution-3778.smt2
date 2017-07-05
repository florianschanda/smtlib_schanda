(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1526379529719281702426769697922281920909881591796875p121 {+ 687420228126971 121 (3.06424e+036)}
; Y = +zero {+ 0 -1023 (0)}
; 1.1526379529719281702426769697922281920909881591796875p121 > +zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10001111000 #b0010011100010011010001111110100000100100100011111011)))
(assert (= y (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
