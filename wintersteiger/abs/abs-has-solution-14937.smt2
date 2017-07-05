(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.959924944622427833706979072303511202335357666015625p-697 {+ 4323117622905210 -697 (2.9808e-210)}
; 1.959924944622427833706979072303511202335357666015625p-697 | == 1.959924944622427833706979072303511202335357666015625p-697
; [HW: 1.959924944622427833706979072303511202335357666015625p-697] 

; mpf : + 4323117622905210 -697
; mpfd: + 4323117622905210 -697 (2.9808e-210) class: Pos. norm. non-zero
; hwf : + 4323117622905210 -697 (2.9808e-210) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101000110 #b1111010110111101101001000010001111000100100101111010)))
(assert (= r (fp #b0 #b00101000110 #b1111010110111101101001000010001111000100100101111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
