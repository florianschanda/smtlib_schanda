(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.80162765424169624139949519303627312183380126953125p-209 {- 3610210004932788 -209 (-2.18976e-063)}
; Y = -1.47354487632145580988662914023734629154205322265625p-497 {- 2132656528544516 -497 (-3.60127e-150)}
; -1.80162765424169624139949519303627312183380126953125p-209 = -1.47354487632145580988662914023734629154205322265625p-497 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100101110 #b1100110100110111011110000100111010001001100010110100)))
(assert (= y (fp #b1 #b01000001110 #b0111100100111010001111001010110011111101001100000100)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
