(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.7051810388392478756713899201713502407073974609375p53 {- 3175853063745176 53 (-1.53589e+016)}
; Y = 1.549019871619507160431794545729644596576690673828125p-479 {+ 2472565689244610 -479 (9.92405e-145)}
; Z = 1.075045536545093494140701295691542327404022216796875p873 {+ 337975050420302 873 (6.77038e+262)}
; -1.7051810388392478756713899201713502407073974609375p53 x 1.549019871619507160431794545729644596576690673828125p-479 1.075045536545093494140701295691542327404022216796875p873 == 1.075045536545093494140701295691542327404022216796875p873
; [HW: 1.075045536545093494140701295691542327404022216796875p873] 

; mpf : + 337975050420302 873
; mpfd: + 337975050420302 873 (6.77038e+262) class: Pos. norm. non-zero
; hwf : + 337975050420302 873 (6.77038e+262) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000110100 #b1011010010000110101111101001101110010010111010011000)))
(assert (= y (fp #b0 #b01000100000 #b1000110010001100100100001111100101110101101111000010)))
(assert (= z (fp #b0 #b11101101000 #b0001001100110110001011110010110100101100000001001110)))
(assert (= r (fp #b0 #b11101101000 #b0001001100110110001011110010110100101100000001001110)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
