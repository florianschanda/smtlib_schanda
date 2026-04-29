(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3617979072437116361271591813419945538043975830078125p722 {- 1629392920246205 722 (-3.00448e+217)}
; Y = -1.903051981459745523039828185574151575565338134765625p-751 {- 4066984567198298 -751 (-1.60666e-226)}
; -1.3617979072437116361271591813419945538043975830078125p722 > -1.903051981459745523039828185574151575565338134765625p-751 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011010001 #b0101110010011110110010011010001101011111011110111101)))
(assert (= y (fp #b1 #b00100010000 #b1110011100101110011010100010011011110101001001011010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
