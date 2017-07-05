(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.076920731904419170632536406628787517547607421875p482 {+ 346420179541808 482 (1.34475e+145)}
; Y = 1.9234655106308029548500826422241516411304473876953125p519 {+ 4158918929566389 519 (3.30105e+156)}
; 1.076920731904419170632536406628787517547607421875p482 = 1.9234655106308029548500826422241516411304473876953125p519 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10111100001 #b0001001110110001000100111011101111101001111100110000)))
(assert (= y (fp #b0 #b11000000110 #b1110110001101000001111000101011100100100101010110101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
