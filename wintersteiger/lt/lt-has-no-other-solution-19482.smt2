(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.677628812559678994631440218654461205005645751953125p-962 {+ 3051768867739282 -962 (4.30368e-290)}
; Y = 1.0071607737081735844952845582156442105770111083984375p-155 {+ 32249257803815 -155 (2.20521e-047)}
; 1.677628812559678994631440218654461205005645751953125p-962 < 1.0071607737081735844952845582156442105770111083984375p-155 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000111101 #b1010110101111001000101001111010011000101011010010010)))
(assert (= y (fp #b0 #b01101100100 #b0000000111010101010010011101100011100100000000100111)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
