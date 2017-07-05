(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9480446572309284558599529191269539296627044677734375p229 {- 4269613565035799 229 (-1.68061e+069)}
; Y = 1.20797693712845433111624515731818974018096923828125p-614 {+ 936644856553364 -614 (1.77681e-185)}
; -1.9480446572309284558599529191269539296627044677734375p229 > 1.20797693712845433111624515731818974018096923828125p-614 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10011100100 #b1111001010110011000011011111110111110100010100010111)))
(assert (= y (fp #b0 #b00110011001 #b0011010100111101111110011111111101001001111110010100)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
