(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9181388468555129467318920433172024786472320556640625p-368 {- 4134929768572865 -368 (-3.19037e-111)}
; Y = 1.0478113753106252925562102973344735801219940185546875p802 {+ 215323292033003 802 (2.79473e+241)}
; -1.9181388468555129467318920433172024786472320556640625p-368 > 1.0478113753106252925562102973344735801219940185546875p802 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010001111 #b1110101100001011001001011100000001101110011111000001)))
(assert (= y (fp #b0 #b11100100001 #b0000110000111101010111011100010101010101111111101011)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
