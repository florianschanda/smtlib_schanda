(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.093372741924228730425738831399939954280853271484375p94 {- 420513445736518 94 (-2.16565e+028)}
; Y = 1.9224286830416670301957537958514876663684844970703125p766 {+ 4154249473222309 766 (7.46151e+230)}
; -1.093372741924228730425738831399939954280853271484375p94 > 1.9224286830416670301957537958514876663684844970703125p766 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10001011101 #b0001011111100111010001101010100011100111000001000110)))
(assert (= y (fp #b0 #b11011111101 #b1110110000100100010010010100001010001110011010100101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
