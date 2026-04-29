(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.92880189376600963413466161000542342662811279296875p927 {+ 4182951862665612 927 (2.18823e+279)}
; Y = -1.1901229535136703674425007193349301815032958984375p-976 {- 856237662598744 -976 (-1.86344e-294)}
; 1.92880189376600963413466161000542342662811279296875p927 < -1.1901229535136703674425007193349301815032958984375p-976 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110011110 #b1110110111000101111101011111111000110000000110001100)))
(assert (= y (fp #b1 #b00000101111 #b0011000010101011111001011101101110001111011001011000)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
