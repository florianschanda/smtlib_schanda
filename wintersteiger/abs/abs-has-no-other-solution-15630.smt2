(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8810938200948033038883977496880106627941131591796875p844 {- 3968093799857403 844 (-2.20662e+254)}
; -1.8810938200948033038883977496880106627941131591796875p844 | == 1.8810938200948033038883977496880106627941131591796875p844
; [HW: 1.8810938200948033038883977496880106627941131591796875p844] 

; mpf : + 3968093799857403 844
; mpfd: + 3968093799857403 844 (2.20662e+254) class: Pos. norm. non-zero
; hwf : + 3968093799857403 844 (2.20662e+254) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101001011 #b1110000110001111010111010101011000000011110011111011)))
(assert (= r (fp #b0 #b11101001011 #b1110000110001111010111010101011000000011110011111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
