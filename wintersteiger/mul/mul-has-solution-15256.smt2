(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.017213069619464338444458917365409433841705322265625p772 {- 77520773924122 772 (-2.52679e+232)}
; Y = -1.120904165849399891641269277897663414478302001953125p707 {- 544503956266898 707 (-7.54702e+212)}
; -1.017213069619464338444458917365409433841705322265625p772 * -1.120904165849399891641269277897663414478302001953125p707 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100000011 #b0000010001101000000100110110001100010100010100011010)))
(assert (= y (fp #b1 #b11011000010 #b0001111011110011100100110100111001000101111110010010)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
