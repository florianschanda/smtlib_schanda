(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.032468274482571946037978705135174095630645751953125p-499 {- 146224108861074 -499 (-6.30825e-151)}
; Y = 1.5456201933137154735931062532472424209117889404296875p-949 {+ 2457254899293467 -949 (3.24816e-286)}
; -1.032468274482571946037978705135174095630645751953125p-499 > 1.5456201933137154735931062532472424209117889404296875p-949 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000001100 #b0000100001001111110101110100000100001111011010010010)))
(assert (= y (fp #b0 #b00001001010 #b1000101110101101110000111101011001010001110100011011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
