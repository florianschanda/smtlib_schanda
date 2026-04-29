(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5526771772663454651564052255707792937755584716796875p566 {+ 2489036729592891 566 (3.75024e+170)}
; Y = 1.219498143915792365277184217120520770549774169921875p270 {+ 988531759147678 270 (2.31356e+081)}
; 1.5526771772663454651564052255707792937755584716796875p566 > 1.219498143915792365277184217120520770549774169921875p270 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000110101 #b1000110101111100010000000110000110011010110000111011)))
(assert (= y (fp #b0 #b10100001101 #b0011100000110001000001111100010110100110101010011110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
