(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7633140744054933701789877886767499148845672607421875p847 {+ 3437660981059235 847 (1.65476e+255)}
; Y = -1.57084517451778271635021155816502869129180908203125p404 {- 2570858115244532 404 (-6.4901e+121)}
; 1.7633140744054933701789877886767499148845672607421875p847 = -1.57084517451778271635021155816502869129180908203125p404 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101001110 #b1100001101101000100011010001101000100101111010100011)))
(assert (= y (fp #b1 #b10110010011 #b1001001000100010111010001100101110100010000111110100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
