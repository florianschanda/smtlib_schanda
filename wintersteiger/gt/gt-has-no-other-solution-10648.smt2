(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1004245367578258107954525257810018956661224365234375p-677 {+ 452271906321399 -677 (1.7549e-204)}
; Y = 1.8102018655953084902421323931775987148284912109375p680 {+ 3648824819989912 680 (9.0808e+204)}
; 1.1004245367578258107954525257810018956661224365234375p-677 > 1.8102018655953084902421323931775987148284912109375p680 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101011010 #b0001100110110101011011000010010100010111001111110111)))
(assert (= y (fp #b0 #b11010100111 #b1100111101101001011000111011001111100011110110011000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
