(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.5013355851193228573947635595686733722686767578125p-195 {- 2257814754330952 -195 (-2.98971e-059)}
; Y = 1.985135373754233878429431570111773908138275146484375p-208 {+ 4436655302149062 -208 (4.8256e-063)}
; -1.5013355851193228573947635595686733722686767578125p-195 > 1.985135373754233878429431570111773908138275146484375p-208 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100111100 #b1000000001010111100001110110011001101000100101001000)))
(assert (= y (fp #b0 #b01100101111 #b1111110000110001110101001111010001101000001111000110)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
