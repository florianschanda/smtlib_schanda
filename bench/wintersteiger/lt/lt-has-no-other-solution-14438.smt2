(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5758172159369585596522256309981457889080047607421875p-366 {- 2593250199127203 -366 (-1.0484e-110)}
; Y = 1.1055514608350451855045548654743470251560211181640625p-65 {+ 475361519685121 -65 (2.9966e-020)}
; -1.5758172159369585596522256309981457889080047607421875p-366 < 1.1055514608350451855045548654743470251560211181640625p-65 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010010001 #b1001001101101000110000011100111011101100010010100011)))
(assert (= y (fp #b0 #b01110111110 #b0001101100000101011010111010100001010100111000000001)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
