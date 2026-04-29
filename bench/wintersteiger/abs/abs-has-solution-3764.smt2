(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2356749061305352110906596863060258328914642333984375p-71 {+ 1061385419430055 -71 (5.23329e-022)}
; 1.2356749061305352110906596863060258328914642333984375p-71 | == 1.2356749061305352110906596863060258328914642333984375p-71
; [HW: 1.2356749061305352110906596863060258328914642333984375p-71] 

; mpf : + 1061385419430055 -71
; mpfd: + 1061385419430055 -71 (5.23329e-022) class: Pos. norm. non-zero
; hwf : + 1061385419430055 -71 (5.23329e-022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01110111000 #b0011110001010101001100001100111001010001100010100111)))
(assert (= r (fp #b0 #b01110111000 #b0011110001010101001100001100111001010001100010100111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
