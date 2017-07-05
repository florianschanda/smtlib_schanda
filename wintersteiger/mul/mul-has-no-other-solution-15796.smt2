(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5719964324363757679492437091539613902568817138671875p221 {- 2576042919977715 221 (-5.29762e+066)}
; Y = -1.7394437310095529625186827615834772586822509765625p300 {- 3330158511436072 300 (-3.54331e+090)}
; -1.5719964324363757679492437091539613902568817138671875p221 * -1.7394437310095529625186827615834772586822509765625p300 == 1.367199669785418070233617982012219727039337158203125p522
; [HW: 1.367199669785418070233617982012219727039337158203125p522] 

; mpf : + 1653720296016178 522
; mpfd: + 1653720296016178 522 (1.87711e+157) class: Pos. norm. non-zero
; hwf : + 1653720296016178 522 (1.87711e+157) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011011100 #b1001001001101110010110111011001010111110001011110011)))
(assert (= y (fp #b1 #b10100101011 #b1011110101001100001011110011000111101011000100101000)))
(assert (= r (fp #b0 #b11000001001 #b0101111000000000110011000010110011010100100100110010)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
