(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8476943694313312516186442735488526523113250732421875p-114 {+ 3817676046295011 -114 (8.89632e-035)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.8476943694313312516186442735488526523113250732421875p-114 - -oo == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110001101 #b1101100100000010011111111000100110110101111111100011)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.sub roundTowardZero x y) r)))
(check-sat)
(exit)
