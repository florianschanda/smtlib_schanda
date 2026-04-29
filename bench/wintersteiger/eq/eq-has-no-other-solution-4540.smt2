(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4497632792792634059964029802358709275722503662109375p-205 {- 2025553736967023 -205 (-2.81934e-062)}
; Y = -1.2353146943092863097035660757683217525482177734375p890 {- 1059763169606104 890 (-1.0197e+268)}
; -1.4497632792792634059964029802358709275722503662109375p-205 = -1.2353146943092863097035660757683217525482177734375p890 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100110010 #b0111001100100011101011111010111101110010001101101111)))
(assert (= y (fp #b1 #b11101111001 #b0011110000111101100101010111010001010011100111011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
