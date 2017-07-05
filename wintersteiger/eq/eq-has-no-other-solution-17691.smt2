(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0351441708454753864998565404675900936126708984375p989 {- 158275274723928 989 (-5.41585e+297)}
; Y = -1.449239386763366610466619022190570831298828125p260 {- 2023194334827648 260 (-2.68497e+078)}
; -1.0351441708454753864998565404675900936126708984375p989 = -1.449239386763366610466619022190570831298828125p260 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111011100 #b0000100011111111001101010101100001101101001001011000)))
(assert (= y (fp #b1 #b10100000011 #b0111001100000001010110100011101000111001010010000000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
