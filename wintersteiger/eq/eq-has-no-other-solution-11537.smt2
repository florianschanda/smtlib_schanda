(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 0.7795927178229120624308734477381221950054168701171875p-1022 {+ 3510973473488019 -1023 (1.73465e-308)}
; Y = 1.6786490562273768123446870959014631807804107666015625p612 {+ 3056363636740953 612 (2.8531e+184)}
; 0.7795927178229120624308734477381221950054168701171875p-1022 = 1.6786490562273768123446870959014631807804107666015625p612 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000000000 #b1100011110010011011000110110101100111111110010010011)))
(assert (= y (fp #b0 #b11001100011 #b1010110110111011111100011100110111110101001101011001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
