(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.820844597348771909395281909382902085781097412109375p-816 {+ 3696755422749014 -816 (4.16674e-246)}
; 1.820844597348771909395281909382902085781097412109375p-816 | == 1.820844597348771909395281909382902085781097412109375p-816
; [HW: 1.820844597348771909395281909382902085781097412109375p-816] 

; mpf : + 3696755422749014 -816
; mpfd: + 3696755422749014 -816 (4.16674e-246) class: Pos. norm. non-zero
; hwf : + 3696755422749014 -816 (4.16674e-246) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00011001111 #b1101001000100010110111110001110010110110000101010110)))
(assert (= r (fp #b0 #b00011001111 #b1101001000100010110111110001110010110110000101010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
