(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.729298074993617984063121184590272605419158935546875p-683 {+ 3284466538783278 -683 (4.30906e-206)}
; +oo M 1.729298074993617984063121184590272605419158935546875p-683 == +oo
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
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b00101010100 #b1011101010110011010001110101010100100010001000101110)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
