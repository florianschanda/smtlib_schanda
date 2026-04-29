(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.147271104257756579869464985677041113376617431640625p237 {+ 663250090257674 237 (2.53382e+071)}
; Y = -1.7642729609115692657184126801439560949802398681640625p136 {- 3441979421970689 136 (-1.5369e+041)}
; 1.147271104257756579869464985677041113376617431640625p237 = -1.7642729609115692657184126801439560949802398681640625p136 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10011101100 #b0010010110110011100011110010000001101110110100001010)))
(assert (= y (fp #b1 #b10010000111 #b1100001110100111011001001000110001010101000100000001)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
