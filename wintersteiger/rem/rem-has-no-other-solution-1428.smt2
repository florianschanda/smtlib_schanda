(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5329728351032170241552421430242247879505157470703125p-223 {+ 2400296261569445 -223 (1.13722e-067)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.5329728351032170241552421430242247879505157470703125p-223 % -oo == 1.5329728351032170241552421430242247879505157470703125p-223
; [HW: 1.5329728351032170241552421430242247879505157470703125p-223] 

; mpf : + 2400296261569445 -223
; mpfd: + 2400296261569445 -223 (1.13722e-067) class: Pos. norm. non-zero
; hwf : + 2400296261569445 -223 (1.13722e-067) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100100000 #b1000100001110000111010000110000001101100101110100101)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b0 #b01100100000 #x8870e8606cba5)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
