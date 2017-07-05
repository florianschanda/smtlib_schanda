(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5344494052963904007214068769826553761959075927734375p-585 {+ 2406946142541207 -585 (1.21173e-176)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.5344494052963904007214068769826553761959075927734375p-585 % -oo == 1.5344494052963904007214068769826553761959075927734375p-585
; [HW: 1.5344494052963904007214068769826553761959075927734375p-585] 

; mpf : + 2406946142541207 -585
; mpfd: + 2406946142541207 -585 (1.21173e-176) class: Pos. norm. non-zero
; hwf : + 2406946142541207 -585 (1.21173e-176) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110110110 #b1000100011010001101011010001110100011101010110010111)))
(assert (= y (_ -oo 11 53)))
(assert (= r (fp #b0 #b00110110110 #x88d1ad1d1d597)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
