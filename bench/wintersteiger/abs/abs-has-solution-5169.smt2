(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.065530623642987340105037219473160803318023681640625p152 {+ 295123692219914 152 (6.0831e+045)}
; 1.065530623642987340105037219473160803318023681640625p152 | == 1.065530623642987340105037219473160803318023681640625p152
; [HW: 1.065530623642987340105037219473160803318023681640625p152] 

; mpf : + 295123692219914 152
; mpfd: + 295123692219914 152 (6.0831e+045) class: Pos. norm. non-zero
; hwf : + 295123692219914 152 (6.0831e+045) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010010111 #b0001000011000110100111010110110101101110111000001010)))
(assert (= r (fp #b0 #b10010010111 #b0001000011000110100111010110110101101110111000001010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
