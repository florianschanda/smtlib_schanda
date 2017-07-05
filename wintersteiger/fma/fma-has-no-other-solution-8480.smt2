(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.83079132220269880093610481708310544490814208984375p-468 {- 3741551489094716 -468 (-2.40215e-141)}
; Y = 1.4306585345214148929926523123867809772491455078125p331 {+ 1939513615594568 331 (6.25842e+099)}
; Z = -1.05799865400054482478253703447990119457244873046875p509 {- 261202716544844 509 (-1.77318e+153)}
; -1.83079132220269880093610481708310544490814208984375p-468 x 1.4306585345214148929926523123867809772491455078125p331 -1.05799865400054482478253703447990119457244873046875p509 == -1.05799865400054482478253703447990119457244873046875p509
; [HW: -1.05799865400054482478253703447990119457244873046875p509] 

; mpf : - 261202716544844 509
; mpfd: - 261202716544844 509 (-1.77318e+153) class: Neg. norm. non-zero
; hwf : - 261202716544844 509 (-1.77318e+153) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000101011 #b1101010010101110101111010111011010101001010000111100)))
(assert (= y (fp #b0 #b10101001010 #b0110111000111111101000110100000110000011010001001000)))
(assert (= z (fp #b1 #b10111111100 #b0000111011011000111111111111001000100100111101001100)))
(assert (= r (fp #b1 #b10111111100 #b0000111011011000111111111111001000100100111101001100)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
