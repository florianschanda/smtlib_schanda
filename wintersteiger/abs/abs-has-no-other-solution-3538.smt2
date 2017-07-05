(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5411648015660122101877504974254406988620758056640625p-597 {+ 2437189598678721 -597 (2.97127e-180)}
; 1.5411648015660122101877504974254406988620758056640625p-597 | == 1.5411648015660122101877504974254406988620758056640625p-597
; [HW: 1.5411648015660122101877504974254406988620758056640625p-597] 

; mpf : + 2437189598678721 -597
; mpfd: + 2437189598678721 -597 (2.97127e-180) class: Pos. norm. non-zero
; hwf : + 2437189598678721 -597 (2.97127e-180) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110101010 #b1000101010001001110001101100010001111000111011000001)))
(assert (= r (fp #b0 #b00110101010 #b1000101010001001110001101100010001111000111011000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
