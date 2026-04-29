(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2121055118287806795507322021876461803913116455078125p858 {+ 955238304035325 858 (2.32958e+258)}
; Y = -1.61271806165717013215044062235392630100250244140625p-101 {- 2759436834162404 -101 (-6.36105e-031)}
; 1.2121055118287806795507322021876461803913116455078125p858 = -1.61271806165717013215044062235392630100250244140625p-101 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101011001 #b0011011001001100100010111111110010011011000111111101)))
(assert (= y (fp #b1 #b01110011010 #b1001110011011011000101110100010001111100011011100100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
