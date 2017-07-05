(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.655237805081045454613786205300129950046539306640625p422 {+ 2950928734802058 422 (1.79275e+127)}
; Y = 1.2864857000849616586179990918026305735111236572265625p866 {+ 1290216892149609 866 (6.32967e+260)}
; 1.655237805081045454613786205300129950046539306640625p422 > 1.2864857000849616586179990918026305735111236572265625p866 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10110100101 #b1010011110111101101010100010111111101101000010001010)))
(assert (= y (fp #b0 #b11101100001 #b0100100101010111001000000111100010100010111101101001)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
