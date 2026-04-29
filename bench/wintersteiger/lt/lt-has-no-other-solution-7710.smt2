(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4361091520005928590109078868408687412738800048828125p-585 {+ 1964061014442733 -585 (1.13407e-176)}
; Y = 1.529000256391312095871626297594048082828521728515625p-818 {+ 2382405357562810 -818 (8.74724e-247)}
; 1.4361091520005928590109078868408687412738800048828125p-585 < 1.529000256391312095871626297594048082828521728515625p-818 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00110110110 #b0110111110100100110110010111000101010100001011101101)))
(assert (= y (fp #b0 #b00011001101 #b1000011101101100100011111001000011000110101110111010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
