(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6767235475738766492526110596372745931148529052734375p-881 {+ 3047691916686551 -881 (1.04e-265)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.6767235475738766492526110596372745931148529052734375p-881 + +oo == +oo
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
(assert (= x (fp #b0 #b00010001110 #b1010110100111101110000010010000101000011010011010111)))
(assert (= y (_ +oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.add roundTowardPositive x y) r)))
(check-sat)
(exit)
