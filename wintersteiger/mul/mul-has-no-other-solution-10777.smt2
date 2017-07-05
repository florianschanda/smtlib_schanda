(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.4492950445084085142610774710192345082759857177734375p759 {- 2023444995027479 759 (-4.39464e+228)}
; Y = 1.630599880695253300899594250950030982494354248046875p612 {+ 2839969387719022 612 (2.77144e+184)}
; -1.4492950445084085142610774710192345082759857177734375p759 * 1.630599880695253300899594250950030982494354248046875p612 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011110110 #b0111001100000101000000000000001001101011001000010111)))
(assert (= y (fp #b0 #b11001100011 #b1010000101101110111111100110100001110010100101101110)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
