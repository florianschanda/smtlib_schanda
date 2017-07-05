(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.201058523219668217052458203397691249847412109375p938 {+ 905487090251760 938 (2.79062e+282)}
; Y = 1.925129573665179893993126825080253183841705322265625p-647 {+ 4166413203227930 -647 (3.2965e-195)}
; 1.201058523219668217052458203397691249847412109375p938 > 1.925129573665179893993126825080253183841705322265625p-647 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101001 #b0011001101111000100100100100010111001111011111110000)))
(assert (= y (fp #b0 #b00101111000 #b1110110011010101010010101010111101110100010100011010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
