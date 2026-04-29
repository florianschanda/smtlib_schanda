(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6539644234211825502001147469854913651943206787109375p-359 {- 2945193933633199 -359 (-1.4085e-108)}
; -1.6539644234211825502001147469854913651943206787109375p-359 | == 1.6539644234211825502001147469854913651943206787109375p-359
; [HW: 1.6539644234211825502001147469854913651943206787109375p-359] 

; mpf : + 2945193933633199 -359
; mpfd: + 2945193933633199 -359 (1.4085e-108) class: Pos. norm. non-zero
; hwf : + 2945193933633199 -359 (1.4085e-108) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010011000 #b1010011101101010001101100110001101010111011010101111)))
(assert (= r (fp #b0 #b01010011000 #b1010011101101010001101100110001101010111011010101111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
