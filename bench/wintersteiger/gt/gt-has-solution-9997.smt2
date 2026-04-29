(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1445033620954190300977870720089413225650787353515625p479 {+ 650785287686713 479 (1.78643e+144)}
; Y = 1.1297727301647249031901765192742459475994110107421875p-1020 {+ 584444419212707 -1020 (1.00553e-307)}
; 1.1445033620954190300977870720089413225650787353515625p479 > 1.1297727301647249031901765192742459475994110107421875p-1020 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111011110 #b0010010011111110001011000001111001011100101000111001)))
(assert (= y (fp #b0 #b00000000011 #b0010000100111000110010010001111111111000010110100011)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
