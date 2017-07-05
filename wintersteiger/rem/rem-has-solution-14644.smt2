(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.908392216451327616510980078601278364658355712890625p-418 {+ 4091034847516458 -418 (2.81922e-126)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.908392216451327616510980078601278364658355712890625p-418 % -oo == 1.908392216451327616510980078601278364658355712890625p-418
; [HW: 1.908392216451327616510980078601278364658355712890625p-418] 

; mpf : + 4091034847516458 -418
; mpfd: + 4091034847516458 -418 (2.81922e-126) class: Pos. norm. non-zero
; hwf : + 4091034847516458 -418 (2.81922e-126) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001011101 #b1110100010001100011001000110110110011001011100101010)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b0 #b01001011101 #xe88c646d9972a)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
