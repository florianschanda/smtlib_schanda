(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.668067610521547283752852308680303394794464111328125p185 {+ 3008709041803138 185 (8.18018e+055)}
; Y = -1.7197491518316512237873894264339469373226165771484375p380 {- 3241462011989255 380 (-4.2351e+114)}
; 1.668067610521547283752852308680303394794464111328125p185 / -1.7197491518316512237873894264339469373226165771484375p380 == -1.939896418899163865745549628627486526966094970703125p-196
; [HW: -1.939896418899163865745549628627486526966094970703125p-196] 

; mpf : - 4232917161921138 -196
; mpfd: - 4232917161921138 -196 (-1.93152e-059) class: Neg. norm. non-zero
; hwf : - 4232917161921138 -196 (-1.93152e-059) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010111000 #b1010101100000110011110101001101010110100111110000010)))
(assert (= y (fp #b1 #b10101111011 #b1011100001000001011110101111110001110000110100000111)))
(assert (= r (fp #b1 #b01100111011 #b1111000010011101000011010011110011001100101001110010)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
