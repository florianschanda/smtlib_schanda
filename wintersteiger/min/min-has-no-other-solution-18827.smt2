(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.09029808013871498673097448772750794887542724609375p358 {+ 406666400064988 358 (6.40153e+107)}
; Y = 1.782603087635767025176392053253948688507080078125p849 {+ 3524530973855440 849 (6.69146e+255)}
; 1.09029808013871498673097448772750794887542724609375p358 m 1.782603087635767025176392053253948688507080078125p849 == 1.09029808013871498673097448772750794887542724609375p358
; [HW: 1.09029808013871498673097448772750794887542724609375p358] 

; mpf : + 406666400064988 358
; mpfd: + 406666400064988 358 (6.40153e+107) class: Pos. norm. non-zero
; hwf : + 406666400064988 358 (6.40153e+107) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101100101 #b0001011100011101110001100110010100010110010111011100)))
(assert (= y (fp #b0 #b11101010000 #b1100100001011000101011010000101100100100111011010000)))
(assert (= r (fp #b0 #b10101100101 #b0001011100011101110001100110010100010110010111011100)))
(assert  (not (= (fp.min x y) r)))
(check-sat)
(exit)
