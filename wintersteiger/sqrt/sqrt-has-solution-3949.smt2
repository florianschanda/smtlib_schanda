(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.874441220384568840273686873842962086200714111328125p-308 {+ 3938133154281346 -308 (3.59446e-093)}
; 1.874441220384568840273686873842962086200714111328125p-308 S == 1.369102341092355512586209442815743386745452880859375p-154
; [HW: 1.369102341092355512586209442815743386745452880859375p-154] 

; mpf : + 1662289165805110 -154
; mpfd: + 1662289165805110 -154 (5.99538e-047) class: Pos. norm. non-zero
; hwf : + 1662289165805110 -154 (5.99538e-047) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01011001011 #b1101111111011011011000010011101111010011011110000010)))
(assert (= r (fp #b0 #b01101100101 #b0101111001111101011111011011001111011110011000110110)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
