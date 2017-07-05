(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8425673873888108733609669798170216381549835205078125p822 {+ 3794586171878781 822 (5.15323e+247)}
; Y = -1.2367503269194257686791615924448706209659576416015625p753 {- 1066228684094169 753 (-5.85961e+226)}
; 1.8425673873888108733609669798170216381549835205078125p822 < -1.2367503269194257686791615924448706209659576416015625p753 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11100110101 #b1101011110110010011111110000110110000010110101111101)))
(assert (= y (fp #b1 #b11011110000 #b0011110010011011101010110101111101101111101011011001)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
