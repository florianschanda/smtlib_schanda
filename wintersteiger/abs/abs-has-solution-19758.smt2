(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4142669723378860080487129380344413220882415771484375p367 {+ 1865692582252807 367 (4.25148e+110)}
; 1.4142669723378860080487129380344413220882415771484375p367 | == 1.4142669723378860080487129380344413220882415771484375p367
; [HW: 1.4142669723378860080487129380344413220882415771484375p367] 

; mpf : + 1865692582252807 367
; mpfd: + 1865692582252807 367 (4.25148e+110) class: Pos. norm. non-zero
; hwf : + 1865692582252807 367 (4.25148e+110) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101101110 #b0110101000001101011001100111101000000001000100000111)))
(assert (= r (fp #b0 #b10101101110 #b0110101000001101011001100111101000000001000100000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
