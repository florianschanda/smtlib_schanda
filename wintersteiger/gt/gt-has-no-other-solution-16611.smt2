(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.208603109714155632303800302906893193721771240234375p-448 {+ 939464887176998 -448 (1.66282e-135)}
; Y = 1.5698138054417578590715720565640367567539215087890625p265 {+ 2566213241858065 265 (9.30673e+079)}
; 1.208603109714155632303800302906893193721771240234375p-448 > 1.5698138054417578590715720565640367567539215087890625p265 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000111111 #b0011010101100111000000110110111000010000111100100110)))
(assert (= y (fp #b0 #b10100001000 #b1001000111011111010100010100101100101110100000010001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
