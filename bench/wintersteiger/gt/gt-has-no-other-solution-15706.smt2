(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2110874455708466879144680206081829965114593505859375p738 {+ 950653341215455 738 (1.75111e+222)}
; Y = 1.869439226359293382273563111084513366222381591796875p589 {+ 3915606175853006 589 (3.78773e+177)}
; 1.2110874455708466879144680206081829965114593505859375p738 > 1.869439226359293382273563111084513366222381591796875p589 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11011100001 #b0011011000001001110100111010101101010010101011011111)))
(assert (= y (fp #b0 #b11001001100 #b1101111010010011100100011011001100010010100111001110)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
