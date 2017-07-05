(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.58659314823214092626812998787499964237213134765625p1008 {+ 2641780683796356 1008 (4.35212e+303)}
; Y = -1.056654263130211379717593445093370974063873291015625p-406 {- 255148118322170 -406 (-6.39374e-123)}
; 1.58659314823214092626812998787499964237213134765625p1008 > -1.056654263130211379717593445093370974063873291015625p-406 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111101111 #b1001011000101010111101111111001110110110111110000100)))
(assert (= y (fp #b1 #b01001101001 #b0000111010000000111001001100111101010010101111111010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
