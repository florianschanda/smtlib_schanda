(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.00597582539102603504943544976413249969482421875p-820 {- 26912725004256 -820 (-1.43877e-247)}
; -1.00597582539102603504943544976413249969482421875p-820 | == 1.00597582539102603504943544976413249969482421875p-820
; [HW: 1.00597582539102603504943544976413249969482421875p-820] 

; mpf : + 26912725004256 -820
; mpfd: + 26912725004256 -820 (1.43877e-247) class: Pos. norm. non-zero
; hwf : + 26912725004256 -820 (1.43877e-247) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00011001011 #b0000000110000111101000011011011010011110111111100000)))
(assert (= r (fp #b0 #b00011001011 #b0000000110000111101000011011011010011110111111100000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
