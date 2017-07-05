(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.109149039889426813232375934603624045848846435546875p375 {+ 491563575373870 375 (8.53568e+112)}
; Y = 1.8366712174757326980767402346828021109104156494140625p425 {+ 3768032183255329 425 (1.5914e+128)}
; 1.109149039889426813232375934603624045848846435546875p375 > 1.8366712174757326980767402346828021109104156494140625p425 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101110110 #b0001101111110001001100010000010010110111000000101110)))
(assert (= y (fp #b0 #b10110101000 #b1101011000110000000101011011110010010000000100100001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
