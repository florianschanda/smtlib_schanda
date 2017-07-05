(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.852709734347044889801736644585616886615753173828125p119 {- 3840263241860546 119 (-1.23134e+036)}
; Y = 1.8226259123282242402552810744964517652988433837890625p-225 {+ 3704777752226705 -225 (3.38025e-068)}
; -1.852709734347044889801736644585616886615753173828125p119 = 1.8226259123282242402552810744964517652988433837890625p-225 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001110110 #b1101101001001011001011110110011000000000010111000010)))
(assert (= y (fp #b0 #b01100011110 #b1101001010010111100111001001111001001010101110010001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
