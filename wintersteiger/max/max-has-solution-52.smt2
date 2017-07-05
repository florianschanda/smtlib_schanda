(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4951149943662029873081564801395870745182037353515625p871 {+ 2229799704133177 871 (2.35397e+262)}
; Y = 1.7524590437751943472477478280779905617237091064453125p-781 {+ 3388774269157525 -781 (1.37791e-235)}
; 1.4951149943662029873081564801395870745182037353515625p871 M 1.7524590437751943472477478280779905617237091064453125p-781 == 1.4951149943662029873081564801395870745182037353515625p871
; [HW: 1.4951149943662029873081564801395870745182037353515625p871] 

; mpf : + 2229799704133177 871
; mpfd: + 2229799704133177 871 (2.35397e+262) class: Pos. norm. non-zero
; hwf : + 2229799704133177 871 (2.35397e+262) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101100110 #b0111111010111111110110110011010010001111111000111001)))
(assert (= y (fp #b0 #b00011110010 #b1100000010100001001001111110100010011000000010010101)))
(assert (= r (fp #b0 #b11101100110 #b0111111010111111110110110011010010001111111000111001)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
