(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.13074172332594979906161825056187808513641357421875p648 {- 588808376452524 648 (-1.32069e+195)}
; Y = -1.924450874589132443048811182961799204349517822265625p-713 {- 4163356614321946 -713 (-4.46601e-215)}
; -1.13074172332594979906161825056187808513641357421875p648 = -1.924450874589132443048811182961799204349517822265625p-713 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010000111 #b0010000101111000010010100010000111101000010110101100)))
(assert (= y (fp #b1 #b00100110110 #b1110110010101000110100000000000100011110011100011010)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
