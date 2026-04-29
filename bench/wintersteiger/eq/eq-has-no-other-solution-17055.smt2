(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.212630533929000886672611159156076610088348388671875p-1013 {+ 957602793370238 -1013 (1.38147e-305)}
; Y = 1.4887169035284359974724566200166009366512298583984375p411 {+ 2200985264620327 411 (7.873e+123)}
; 1.212630533929000886672611159156076610088348388671875p-1013 = 1.4887169035284359974724566200166009366512298583984375p411 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00000001010 #b0011011001101110111101000110010101011011001001111110)))
(assert (= y (fp #b0 #b10110011010 #b0111110100011100100011010000110110101000001100100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
