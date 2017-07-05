(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.305491755788834584706137320608831942081451416015625p-905 {- 1375812557535354 -905 (-4.82645e-273)}
; -1.305491755788834584706137320608831942081451416015625p-905 | == 1.305491755788834584706137320608831942081451416015625p-905
; [HW: 1.305491755788834584706137320608831942081451416015625p-905] 

; mpf : + 1375812557535354 -905
; mpfd: + 1375812557535354 -905 (4.82645e-273) class: Pos. norm. non-zero
; hwf : + 1375812557535354 -905 (4.82645e-273) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00001110110 #b0100111000110100101101010010110001001111100001111010)))
(assert (= r (fp #b0 #b00001110110 #b0100111000110100101101010010110001001111100001111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
