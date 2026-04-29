(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.184066184511399111300988806760869920253753662109375p301 {+ 828960399977046 301 (4.82397e+090)}
; Y = -1.8824380652703809335690721127321012318134307861328125p26 {- 3974147741929229 26 (-1.26328e+008)}
; 1.184066184511399111300988806760869920253753662109375p301 = -1.8824380652703809335690721127321012318134307861328125p26 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10100101100 #b0010111100011110111101100010001011000110101001010110)))
(assert (= y (fp #b1 #b10000011001 #b1110000111100111011101100000011100010100111100001101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
