(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.554100144721029863603689591400325298309326171875p904 {- 2495445205291568 904 (-2.10182e+272)}
; Y = -1.1264050698237200176521355388103984296321868896484375p529 {- 569277825355847 529 (-1.97953e+159)}
; -1.554100144721029863603689591400325298309326171875p904 < -1.1264050698237200176521355388103984296321868896484375p529 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11110000111 #b1000110111011001100000011101000001001001001000110000)))
(assert (= y (fp #b1 #b11000010000 #b0010000001011100000101010010100011110001000001000111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
