(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.92997457318386711477842254680581390857696533203125p570 {+ 4188233141254900 570 (7.45846e+171)}
; Y = 1.5913354081575039611351485291379503905773162841796875p-425 {+ 2663137923829115 -425 (1.8366e-128)}
; 1.92997457318386711477842254680581390857696533203125p570 m 1.5913354081575039611351485291379503905773162841796875p-425 == 1.5913354081575039611351485291379503905773162841796875p-425
; [HW: 1.5913354081575039611351485291379503905773162841796875p-425] 

; mpf : + 2663137923829115 -425
; mpfd: + 2663137923829115 -425 (1.8366e-128) class: Pos. norm. non-zero
; hwf : + 2663137923829115 -425 (1.8366e-128) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000111001 #b1110111000010010110100000100100111101111101011110100)))
(assert (= y (fp #b0 #b01001010110 #b1001011101100001110000011101111100000000110101111011)))
(assert (= r (fp #b0 #b01001010110 #b1001011101100001110000011101111100000000110101111011)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
