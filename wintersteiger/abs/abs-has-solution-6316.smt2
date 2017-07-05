(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5531757939807115942443260792060755193233489990234375p581 {+ 2491282299641911 581 (1.22927e+175)}
; 1.5531757939807115942443260792060755193233489990234375p581 | == 1.5531757939807115942443260792060755193233489990234375p581
; [HW: 1.5531757939807115942443260792060755193233489990234375p581] 

; mpf : + 2491282299641911 581
; mpfd: + 2491282299641911 581 (1.22927e+175) class: Pos. norm. non-zero
; hwf : + 2491282299641911 581 (1.22927e+175) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001000100 #b1000110110011100111011011100100000010110000000110111)))
(assert (= r (fp #b0 #b11001000100 #b1000110110011100111011011100100000010110000000110111)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
