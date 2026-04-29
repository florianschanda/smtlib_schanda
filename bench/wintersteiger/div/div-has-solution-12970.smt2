(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.41975593808003708318210556171834468841552734375p911 {+ 1890412686323808 911 (2.45776e+274)}
; Y = -1.0158282058450447404851502142264507710933685302734375p-869 {- 71283901945687 -869 (-2.5808e-262)}
; 1.41975593808003708318210556171834468841552734375p911 / -1.0158282058450447404851502142264507710933685302734375p-869 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001110 #b0110101101110101001000000000101001011011000001100000)))
(assert (= y (fp #b1 #b00010011010 #b0000010000001101010100010011101001110101011101010111)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundTowardNegative x y) r))
(check-sat)
(exit)
