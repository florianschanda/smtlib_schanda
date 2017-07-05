(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1754819319445835024140478708432056009769439697265625p-675 {+ 790300363315881 -675 (7.4984e-204)}
; Y = 1.4846201948429078587565754787647165358066558837890625p301 {+ 2182535328910737 301 (6.04845e+090)}
; 1.1754819319445835024140478708432056009769439697265625p-675 + 1.4846201948429078587565754787647165358066558837890625p301 == 1.4846201948429078587565754787647165358066558837890625p301
; [HW: 1.4846201948429078587565754787647165358066558837890625p301] 

; mpf : + 2182535328910737 301
; mpfd: + 2182535328910737 301 (6.04845e+090) class: Pos. norm. non-zero
; hwf : + 2182535328910737 301 (6.04845e+090) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101011100 #b0010110011101100011000100100011010111101101010101001)))
(assert (= y (fp #b0 #b10100101100 #b0111110000010000000100011010111111010100110110010001)))
(assert (= r (fp #b0 #b10100101100 #b0111110000010000000100011010111111010100110110010001)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
