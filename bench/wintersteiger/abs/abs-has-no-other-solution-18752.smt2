(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2830624365409593057307802155264653265476226806640625p-655 {- 1274799883728449 -655 (-8.58224e-198)}
; -1.2830624365409593057307802155264653265476226806640625p-655 | == 1.2830624365409593057307802155264653265476226806640625p-655
; [HW: 1.2830624365409593057307802155264653265476226806640625p-655] 

; mpf : + 1274799883728449 -655
; mpfd: + 1274799883728449 -655 (8.58224e-198) class: Pos. norm. non-zero
; hwf : + 1274799883728449 -655 (8.58224e-198) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101110000 #b0100100001110110110001111010001110101011011001000001)))
(assert (= r (fp #b0 #b00101110000 #b0100100001110110110001111010001110101011011001000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
