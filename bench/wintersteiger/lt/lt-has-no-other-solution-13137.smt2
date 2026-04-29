(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9022816966292739326860328219481743872165679931640625p5 {+ 4063515512722817 5 (60.873)}
; Y = -1.907423319099171177271045962697826325893402099609375p170 {- 4086671321762326 170 (-2.85461e+051)}
; 1.9022816966292739326860328219481743872165679931640625p5 < -1.907423319099171177271045962697826325893402099609375p170 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10000000100 #b1110011011111011111011101110101011001101010110000001)))
(assert (= y (fp #b1 #b10010101001 #b1110100001001100111001010000011100101000101000010110)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
