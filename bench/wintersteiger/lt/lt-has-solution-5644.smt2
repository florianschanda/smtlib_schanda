(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7322157439725902605687224422581493854522705078125p-726 {- 3297606551709768 -726 (-4.9071e-219)}
; Y = 1.3201364224043230510829971535713411867618560791015625p-901 {+ 1441766272647833 -901 (7.80895e-272)}
; -1.7322157439725902605687224422581493854522705078125p-726 < 1.3201364224043230510829971535713411867618560791015625p-901 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100101001 #b1011101101110010011111011011000111111010100001001000)))
(assert (= y (fp #b0 #b00001111010 #b0101000111110100011101011110100001111100001010011001)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
