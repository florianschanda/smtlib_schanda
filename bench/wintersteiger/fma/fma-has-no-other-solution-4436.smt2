(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.06322372040529966596977828885428607463836669921875p432 {- 284734323658284 432 (-1.17919e+130)}
; Y = -oo {- 0 1024 (-1.#INF)}
; Z = -1.9252247142924774347960692466585896909236907958984375p594 {- 4166841678521575 594 (-1.24824e+179)}
; -1.06322372040529966596977828885428607463836669921875p432 x -oo -1.9252247142924774347960692466585896909236907958984375p594 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110101111 #b0001000000101111011011100000001101111000111000101100)))
(assert (= y (_ -oo 11 53)))
(assert (= z (fp #b1 #b11001010001 #b1110110011011011100001101110000101010110010011100111)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
