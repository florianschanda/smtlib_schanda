(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.755922599786209570282835557009093463420867919921875p-489 {+ 3404372738718110 -489 (1.09859e-147)}
; 1.755922599786209570282835557009093463420867919921875p-489 | == 1.755922599786209570282835557009093463420867919921875p-489
; [HW: 1.755922599786209570282835557009093463420867919921875p-489] 

; mpf : + 3404372738718110 -489
; mpfd: + 3404372738718110 -489 (1.09859e-147) class: Pos. norm. non-zero
; hwf : + 3404372738718110 -489 (1.09859e-147) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000010110 #b1100000110000100001001001011110001100011100110011110)))
(assert (= r (fp #b0 #b01000010110 #b1100000110000100001001001011110001100011100110011110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
