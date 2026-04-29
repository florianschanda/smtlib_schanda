(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7255962056071505461574133732938207685947418212890625p32 {- 3267794801193809 32 (-7.41138e+009)}
; Y = 1.97404685071686714081806712783873081207275390625p950 {+ 4386717033929888 950 (1.87868e+286)}
; -1.7255962056071505461574133732938207685947418212890625p32 < 1.97404685071686714081806712783873081207275390625p950 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000011111 #b1011100111000000101011000100010100101111001101010001)))
(assert (= y (fp #b0 #b11110110101 #b1111100101011011001000100110100010011001110010100000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
