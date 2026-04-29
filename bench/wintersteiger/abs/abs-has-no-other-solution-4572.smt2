(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.02632595436613005546178101212717592716217041015625p-373 {+ 118561558273476 -373 (5.33454e-113)}
; 1.02632595436613005546178101212717592716217041015625p-373 | == 1.02632595436613005546178101212717592716217041015625p-373
; [HW: 1.02632595436613005546178101212717592716217041015625p-373] 

; mpf : + 118561558273476 -373
; mpfd: + 118561558273476 -373 (5.33454e-113) class: Pos. norm. non-zero
; hwf : + 118561558273476 -373 (5.33454e-113) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010001010 #b0000011010111101010011000011100100001001110111000100)))
(assert (= r (fp #b0 #b01010001010 #b0000011010111101010011000011100100001001110111000100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
