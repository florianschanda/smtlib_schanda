(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.63434991659964001797789023839868605136871337890625p-141 {- 2856858048020644 -141 (-5.86294e-043)}
; -1.63434991659964001797789023839868605136871337890625p-141 | == 1.63434991659964001797789023839868605136871337890625p-141
; [HW: 1.63434991659964001797789023839868605136871337890625p-141] 

; mpf : + 2856858048020644 -141
; mpfd: + 2856858048020644 -141 (5.86294e-043) class: Pos. norm. non-zero
; hwf : + 2856858048020644 -141 (5.86294e-043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101110010 #b1010001001100100110000011001001000000100000010100100)))
(assert (= r (fp #b0 #b01101110010 #b1010001001100100110000011001001000000100000010100100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
