(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8888550429363666349757977513945661485195159912109375p400 {- 4003047240154607 400 (-4.8775e+120)}
; Y = -1.1395770172893395777435898708063177764415740966796875p717 {- 628599003053755 717 (-7.85689e+215)}
; -1.8888550429363666349757977513945661485195159912109375p400 * -1.1395770172893395777435898708063177764415740966796875p717 == +oo
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
(assert (= x (fp #b1 #b10110001111 #b1110001110001100000000010000110001001011110111101111)))
(assert (= y (fp #b1 #b11011001100 #b0010001110111011010100011100010010000111111010111011)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
