(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.877964235306485374366047835792414844036102294921875p34 {- 3953999402970910 34 (-3.22632e+010)}
; Y = 1.4761241670703799666597433315473608672618865966796875p-282 {+ 2144272621400251 -282 (1.89961e-085)}
; -1.877964235306485374366047835792414844036102294921875p34 = 1.4761241670703799666597433315473608672618865966796875p-282 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000100001 #b1110000011000010010000111001110110110010111100011110)))
(assert (= y (fp #b0 #b01011100101 #b0111100111100011010001011111111001100111000010111011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
