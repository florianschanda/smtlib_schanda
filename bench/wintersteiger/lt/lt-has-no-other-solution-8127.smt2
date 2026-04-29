(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6277226025790996200015570138930343091487884521484375p554 {+ 2827011279067271 554 (9.59838e+166)}
; Y = -1.1412488528770265983069975845864973962306976318359375p127 {- 636128281183487 127 (-1.94173e+038)}
; 1.6277226025790996200015570138930343091487884521484375p554 < -1.1412488528770265983069975845864973962306976318359375p127 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11000101001 #b1010000010110010011011011011000100001001100010000111)))
(assert (= y (fp #b1 #b10001111110 #b0010010000101000111000101000001110110100010011111111)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
