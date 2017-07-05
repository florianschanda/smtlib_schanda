(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2057916792854275200852498528547585010528564453125p638 {+ 926803330145800 638 (1.37534e+192)}
; 1.2057916792854275200852498528547585010528564453125p638 S == 1.0980854608296330976457966244197450578212738037109375p319
; [HW: 1.0980854608296330976457966244197450578212738037109375p319] 

; mpf : + 441737644842799 319
; mpfd: + 441737644842799 319 (1.17275e+096) class: Pos. norm. non-zero
; hwf : + 441737644842799 319 (1.17275e+096) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001111101 #b0011010010101110110000110111010001010001111000001000)))
(assert (= r (fp #b0 #b10100111110 #b0001100100011100001000001111011001111001111100101111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
