(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7300220329314159872780010118731297552585601806640625p-666 {+ 3287726955482177 -666 (5.65034e-201)}
; 1.7300220329314159872780010118731297552585601806640625p-666 | == 1.7300220329314159872780010118731297552585601806640625p-666
; [HW: 1.7300220329314159872780010118731297552585601806640625p-666] 

; mpf : + 3287726955482177 -666
; mpfd: + 3287726955482177 -666 (5.65034e-201) class: Pos. norm. non-zero
; hwf : + 3287726955482177 -666 (5.65034e-201) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00101100101 #b1011101011100010101110010101010011001100110001000001)))
(assert (= r (fp #b0 #b00101100101 #b1011101011100010101110010101010011001100110001000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
