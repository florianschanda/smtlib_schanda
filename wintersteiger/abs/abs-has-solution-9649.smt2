(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.430638322911107263024632629822008311748504638671875p-176 {- 1939422590593918 -176 (-1.49366e-053)}
; -1.430638322911107263024632629822008311748504638671875p-176 | == 1.430638322911107263024632629822008311748504638671875p-176
; [HW: 1.430638322911107263024632629822008311748504638671875p-176] 

; mpf : + 1939422590593918 -176
; mpfd: + 1939422590593918 -176 (1.49366e-053) class: Pos. norm. non-zero
; hwf : + 1939422590593918 -176 (1.49366e-053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101001111 #b0110111000111110010100000010100101001110101101111110)))
(assert (= r (fp #b0 #b01101001111 #b0110111000111110010100000010100101001110101101111110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
