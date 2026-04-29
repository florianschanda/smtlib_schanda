(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.400483122926977852529262236203067004680633544921875p941 {+ 1803615643182110 941 (2.60318e+283)}
; Y = 1.450114185530362309606289272778667509555816650390625p985 {+ 2027134078228714 985 (4.74185e+296)}
; 1.400483122926977852529262236203067004680633544921875p941 > 1.450114185530362309606289272778667509555816650390625p985 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101100 #b0110011010000110000011111101101110010010010000011110)))
(assert (= y (fp #b0 #b11111011000 #b0111001100111010101011101110101001010001100011101010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
