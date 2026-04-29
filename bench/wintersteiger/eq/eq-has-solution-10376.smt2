(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.316706953375471389477979755611158907413482666015625p975 {- 1426321317207418 975 (-4.2047e+293)}
; Y = -1.798465598410757593228481709957122802734375p394 {- 3595969371470848 394 (-7.25639e+118)}
; -1.316706953375471389477979755611158907413482666015625p975 = -1.798465598410757593228481709957122802734375p394 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111001110 #b0101000100010011101101001111011100101001110101111010)))
(assert (= y (fp #b1 #b10110001001 #b1100110001101000001111011101000000100111110000000000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
