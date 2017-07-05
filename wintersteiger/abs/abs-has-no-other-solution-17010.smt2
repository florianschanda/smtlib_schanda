(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.07438665095457519527144540916197001934051513671875p-489 {+ 335007693520364 -489 (6.72191e-148)}
; 1.07438665095457519527144540916197001934051513671875p-489 | == 1.07438665095457519527144540916197001934051513671875p-489
; [HW: 1.07438665095457519527144540916197001934051513671875p-489] 

; mpf : + 335007693520364 -489
; mpfd: + 335007693520364 -489 (6.72191e-148) class: Pos. norm. non-zero
; hwf : + 335007693520364 -489 (6.72191e-148) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010110 #b0001001100001011000000001110100100011011110111101100)))
(assert (= r (fp #b0 #b01000010110 #b0001001100001011000000001110100100011011110111101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
