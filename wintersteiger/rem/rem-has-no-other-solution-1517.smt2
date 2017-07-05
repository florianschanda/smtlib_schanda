(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2499847408395263759217641563736833631992340087890625p-863 {+ 1125831185693201 -863 (2.03244e-260)}
; Y = -zero {- 0 -1023 (-0)}
; 1.2499847408395263759217641563736833631992340087890625p-863 % -zero == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010100000 #b0011111111111110111111111111111001100111101000010001)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (_ NaN 11 53)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
