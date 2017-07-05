(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.768744487871503512366189170279540121555328369140625p-221 {+ 3462117389121226 -221 (5.24851e-067)}
; Y = 1.38850341617639827518360107205808162689208984375p77 {+ 1749663840324192 77 (2.09825e+023)}
; 1.768744487871503512366189170279540121555328369140625p-221 * 1.38850341617639827518360107205808162689208984375p77 == 1.22795388187637843913080359925515949726104736328125p-143
; [HW: 1.22795388187637843913080359925515949726104736328125p-143] 

; mpf : + 1026613017476116 -143
; mpfd: + 1026613017476116 -143 (1.10127e-043) class: Pos. norm. non-zero
; hwf : + 1026613017476116 -143 (1.10127e-043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100010 #b1100010011001100011100000101001001100011011011001010)))
(assert (= y (fp #b0 #b10001001100 #b0110001101110100111101011011101011011100101001100000)))
(assert (= r (fp #b0 #b01101110000 #b0011101001011011001011111000001110100111110000010100)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
