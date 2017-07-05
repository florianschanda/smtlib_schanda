(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.226011594455588049612515533226542174816131591796875p176 {- 1017865732571598 176 (-1.17429e+053)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.226011594455588049612515533226542174816131591796875p176 m +oo == -1.226011594455588049612515533226542174816131591796875p176
; [HW: -1.226011594455588049612515533226542174816131591796875p176] 

; mpf : - 1017865732571598 176
; mpfd: - 1017865732571598 176 (-1.17429e+053) class: Neg. norm. non-zero
; hwf : - 1017865732571598 176 (-1.17429e+053) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010101111 #b0011100111011011111001010101011010110100000111001110)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b1 #b10010101111 #b0011100111011011111001010101011010110100000111001110)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
