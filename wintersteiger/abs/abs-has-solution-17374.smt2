(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4553887970111485383739591270568780601024627685546875p-183 {- 2050888816528107 -183 (-1.18711e-055)}
; -1.4553887970111485383739591270568780601024627685546875p-183 | == 1.4553887970111485383739591270568780601024627685546875p-183
; [HW: 1.4553887970111485383739591270568780601024627685546875p-183] 

; mpf : + 2050888816528107 -183
; mpfd: + 2050888816528107 -183 (1.18711e-055) class: Pos. norm. non-zero
; hwf : + 2050888816528107 -183 (1.18711e-055) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101001000 #b0111010010010100010111000011011000100000101011101011)))
(assert (= r (fp #b0 #b01101001000 #b0111010010010100010111000011011000100000101011101011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
