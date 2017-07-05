(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7719763810400717130022485434892587363719940185546875p86 {- 3476672541990891 86 (-1.371e+026)}
; Y = 1.3259293176421882431981202898896299302577972412109375p-601 {+ 1467855153482479 -601 (1.59769e-181)}
; -1.7719763810400717130022485434892587363719940185546875p86 = 1.3259293176421882431981202898896299302577972412109375p-601 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001010101 #b1100010110100000001111100111110111011001111111101011)))
(assert (= y (fp #b0 #b00110100110 #b0101001101110000000110101001000000010100101011101111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
