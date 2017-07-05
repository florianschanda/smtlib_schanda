(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.293866205606805319661134490161202847957611083984375p455 {- 1323455734067590 455 (-1.20375e+137)}
; Y = -1.224731273258112818069776039919815957546234130859375p985 {- 1012099678503734 985 (-4.00485e+296)}
; -1.293866205606805319661134490161202847957611083984375p455 * -1.224731273258112818069776039919815957546234130859375p985 == +oo
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
(assert (= x (fp #b1 #b10111000110 #b0100101100111010110100001100111001111011000110000110)))
(assert (= y (fp #b1 #b11111011000 #b0011100110000111111111010001110100001000001100110110)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
