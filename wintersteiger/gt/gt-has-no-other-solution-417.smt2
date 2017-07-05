(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.92411962981822881602056440897285938262939453125p293 {- 4161864820495136 293 (-3.06211e+088)}
; Y = -1.4791540928678477140323366256779991090297698974609375p-615 {- 2157918194092687 -615 (-1.08784e-185)}
; -1.92411962981822881602056440897285938262939453125p293 > -1.4791540928678477140323366256779991090297698974609375p-615 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100100100 #b1110110010010011000110101010001110101001001100100000)))
(assert (= y (fp #b1 #b00110011000 #b0111101010101001110101111011011010011100101010001111)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
