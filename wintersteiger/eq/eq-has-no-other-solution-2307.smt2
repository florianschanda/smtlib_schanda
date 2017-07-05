(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4754361825279522779652552344487048685550689697265625p545 {- 2141174214471337 545 (-1.69929e+164)}
; Y = 1.2643285707864431177682718043797649443149566650390625p505 {+ 1190430052897201 505 (1.32437e+152)}
; -1.4754361825279522779652552344487048685550689697265625p545 = 1.2643285707864431177682718043797649443149566650390625p505 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11000100000 #b0111100110110110001011111000011101001010111010101001)))
(assert (= y (fp #b0 #b10111111000 #b0100001110101011000010011000011011101101000110110001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
