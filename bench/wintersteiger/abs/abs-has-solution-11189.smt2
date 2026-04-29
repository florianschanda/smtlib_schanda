(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.626345977536244991057401421130634844303131103515625p-359 {- 2820811511037242 -359 (-1.38498e-108)}
; -1.626345977536244991057401421130634844303131103515625p-359 | == 1.626345977536244991057401421130634844303131103515625p-359
; [HW: 1.626345977536244991057401421130634844303131103515625p-359] 

; mpf : + 2820811511037242 -359
; mpfd: + 2820811511037242 -359 (1.38498e-108) class: Pos. norm. non-zero
; hwf : + 2820811511037242 -359 (1.38498e-108) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010011000 #b1010000001011000001101011100000101111111110100111010)))
(assert (= r (fp #b0 #b01010011000 #b1010000001011000001101011100000101111111110100111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
