(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.028801899430348942843238546629436314105987548828125p-470 {+ 129712223542082 -470 (3.37469e-142)}
; Y = 1.43360979792616571870667030452750623226165771484375p543 {+ 1952804924364476 543 (4.1278e+163)}
; 1.028801899430348942843238546629436314105987548828125p-470 = 1.43360979792616571870667030452750623226165771484375p543 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000101001 #b0000011101011111100011111011000000011101101101000010)))
(assert (= y (fp #b0 #b11000011110 #b0110111100000001000011010011110101010001011010111100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
