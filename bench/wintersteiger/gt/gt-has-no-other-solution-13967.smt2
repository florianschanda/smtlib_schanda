(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.542698758221184629491062878514640033245086669921875p-747 {+ 2444097925299358 -747 (2.08389e-225)}
; Y = 1.361651344960391529781418284983374178409576416015625p176 {+ 1628732862401658 176 (1.3042e+053)}
; 1.542698758221184629491062878514640033245086669921875p-747 > 1.361651344960391529781418284983374178409576416015625p176 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100010100 #b1000101011101110010011100100101000100011110010011110)))
(assert (= y (fp #b0 #b10010101111 #b0101110010010101001011101011101100101000110001111010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
