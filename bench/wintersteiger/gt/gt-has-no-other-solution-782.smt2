(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3598257854509496755923692035139538347721099853515625p-290 {+ 1620511273275193 -290 (6.83572e-088)}
; Y = 1.8694746782443816268681757719605229794979095458984375p936 {+ 3915765836949479 936 (1.08591e+282)}
; 1.3598257854509496755923692035139538347721099853515625p-290 > 1.8694746782443816268681757719605229794979095458984375p936 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011011101 #b0101110000011101100010101110110011000100111100111001)))
(assert (= y (fp #b0 #b11110100111 #b1101111010010101111001000111101111000010011111100111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
