(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8860214123346512593570878379978239536285400390625p-648 {+ 3990285702432616 -648 (1.61477e-195)}
; 1.8860214123346512593570878379978239536285400390625p-648 S == 1.373324947830866005205052715609781444072723388671875p-324
; [HW: 1.373324947830866005205052715609781444072723388671875p-324] 

; mpf : + 1681306095939198 -324
; mpfd: + 1681306095939198 -324 (4.01841e-098) class: Pos. norm. non-zero
; hwf : + 1681306095939198 -324 (4.01841e-098) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101110111 #b1110001011010010010011001001110110001000011101101000)))
(assert (= r (fp #b0 #b01010111011 #b0101111110010010001110010100100110110110111001111110)))
(assert (= (fp.sqrt roundTowardZero x) r))
(check-sat)
(exit)
