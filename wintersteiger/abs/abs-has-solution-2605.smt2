(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6195157078682471674113685367046855390071868896484375p-185 {+ 2790050711105607 -185 (3.30245e-056)}
; 1.6195157078682471674113685367046855390071868896484375p-185 | == 1.6195157078682471674113685367046855390071868896484375p-185
; [HW: 1.6195157078682471674113685367046855390071868896484375p-185] 

; mpf : + 2790050711105607 -185
; mpfd: + 2790050711105607 -185 (3.30245e-056) class: Pos. norm. non-zero
; hwf : + 2790050711105607 -185 (3.30245e-056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101000110 #b1001111010011000100101001101100010100111000001000111)))
(assert (= r (fp #b0 #b01101000110 #b1001111010011000100101001101100010100111000001000111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
