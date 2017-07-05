(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.664849016033858930541100562550127506256103515625p512 {- 2994213780867728 512 (-2.2322e+154)}
; Y = -1.9532244601186559140870713235926814377307891845703125p994 {- 4292941323390821 994 (-3.27015e+299)}
; -1.664849016033858930541100562550127506256103515625p512 > -1.9532244601186559140870713235926814377307891845703125p994 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111111111 #b1010101000110011100010111000110010100100101010010000)))
(assert (= y (fp #b1 #b11111100001 #b1111010000000110100001001010100111110100111101100101)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
