(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.5786241619976417727144735181354917585849761962890625p-747 {- 2605891560360145 -747 (-2.13242e-225)}
; Y = 1.3586006426431540550225918195792473852634429931640625p538 {+ 1614993720582529 538 (1.22245e+162)}
; -1.5786241619976417727144735181354917585849761962890625p-747 % 1.3586006426431540550225918195792473852634429931640625p538 == -1.5786241619976417727144735181354917585849761962890625p-747
; [HW: -1.5786241619976417727144735181354917585849761962890625p-747] 

; mpf : - 2605891560360145 -747
; mpfd: - 2605891560360145 -747 (-2.13242e-225) class: Neg. norm. non-zero
; hwf : - 2605891560360145 -747 (-2.13242e-225) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00100010100 #b1001010000100000101101101000110001110100100011010001)))
(assert (= y (fp #b0 #b11000011001 #b0101101111001101010000000111000001111010000110000001)))
(assert (= r (fp #b1 #b00100010100 #x9420b68c748d1)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
