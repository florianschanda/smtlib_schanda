(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6949007543622272020655827873270027339458465576171875p-354 {+ 3129554778405203 -354 (4.61876e-107)}
; 1.6949007543622272020655827873270027339458465576171875p-354 S == 1.3018835410136448960116695161559619009494781494140625p-177
; [HW: 1.3018835410136448960116695161559619009494781494140625p-177] 

; mpf : + 1359562602818337 -177
; mpfd: + 1359562602818337 -177 (6.79615e-054) class: Pos. norm. non-zero
; hwf : + 1359562602818337 -177 (6.79615e-054) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010011101 #b1011000111100101000001000000110111110011100101010011)))
(assert (= r (fp #b0 #b01101001110 #b0100110101001000001111010101111111011010101100100001)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
