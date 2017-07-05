(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9394037943696249559621946900733746588230133056640625p-956 {+ 4230698578273473 -956 (3.18414e-288)}
; Y = -1.121106073262479352337095406255684792995452880859375p-302 {- 545413266417206 -302 (-1.3759e-091)}
; 1.9394037943696249559621946900733746588230133056640625p-956 m -1.121106073262479352337095406255684792995452880859375p-302 == -1.121106073262479352337095406255684792995452880859375p-302
; [HW: -1.121106073262479352337095406255684792995452880859375p-302] 

; mpf : - 545413266417206 -302
; mpfd: - 545413266417206 -302 (-1.3759e-091) class: Neg. norm. non-zero
; hwf : - 545413266417206 -302 (-1.3759e-091) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001000011 #b1111000001111100110001000101111010001110010011000001)))
(assert (= y (fp #b1 #b01011010001 #b0001111100000000110011101100000000000010011000110110)))
(assert (= r (fp #b1 #b01011010001 #b0001111100000000110011101100000000000010011000110110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
