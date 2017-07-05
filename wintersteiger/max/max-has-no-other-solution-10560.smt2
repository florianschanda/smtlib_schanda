(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9901072353943678461263289136695675551891326904296875p880 {- 4459046576378907 880 (-1.60425e+265)}
; Y = 1.645104019995475841398047123220749199390411376953125p-192 {+ 2905290224066834 -192 (2.6208e-058)}
; -1.9901072353943678461263289136695675551891326904296875p880 M 1.645104019995475841398047123220749199390411376953125p-192 == 1.645104019995475841398047123220749199390411376953125p-192
; [HW: 1.645104019995475841398047123220749199390411376953125p-192] 

; mpf : + 2905290224066834 -192
; mpfd: + 2905290224066834 -192 (2.6208e-058) class: Pos. norm. non-zero
; hwf : + 2905290224066834 -192 (2.6208e-058) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101101111 #b1111110101110111101010101111001110001101010000011011)))
(assert (= y (fp #b0 #b01100111111 #b1010010100100101100010010111110001100110000100010010)))
(assert (= r (fp #b0 #b01100111111 #b1010010100100101100010010111110001100110000100010010)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
