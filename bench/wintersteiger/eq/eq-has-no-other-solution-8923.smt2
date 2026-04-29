(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4068269284395833462752989362343214452266693115234375p823 {- 1832185603324791 823 (-7.86914e+247)}
; Y = -1.8615804890782883251887369624455459415912628173828125p-388 {- 3880213569562669 -388 (-2.95286e-117)}
; -1.4068269284395833462752989362343214452266693115234375p823 = -1.8615804890782883251887369624455459415912628173828125p-388 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100110110 #b0110100000100101110011110100000011000111101101110111)))
(assert (= y (fp #b1 #b01001111011 #b1101110010010000100010011111011101110110100000101101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
