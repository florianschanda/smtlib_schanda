(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.764403243142477872851259235176257789134979248046875p-995 {- 3442566160977262 -995 (-5.26929e-300)}
; Y = 1.056273866267548822150956766563467681407928466796875p860 {+ 253434963153230 860 (8.12031e+258)}
; -1.764403243142477872851259235176257789134979248046875p-995 = 1.056273866267548822150956766563467681407928466796875p860 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000011100 #b1100001110101111111011100101001001000000110101101110)))
(assert (= y (fp #b0 #b11101011011 #b0000111001100111111101101100111100111101000101001110)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
