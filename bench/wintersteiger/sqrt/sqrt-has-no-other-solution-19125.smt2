(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0736464896720214756697941993479616940021514892578125p487 {+ 331674303444061 487 (4.29012e+146)}
; 1.0736464896720214756697941993479616940021514892578125p487 S == 1.465364452736602540738886091276071965694427490234375p243
; [HW: 1.465364452736602540738886091276071965694427490234375p243] 

; mpf : + 2095815175936038 243
; mpfd: + 2095815175936038 243 (2.07126e+073) class: Pos. norm. non-zero
; hwf : + 2095815175936038 243 (2.07126e+073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100110 #b0001001011011010011111110001000010011011010001011101)))
(assert (= r (fp #b0 #b10011110010 #b0111011100100010000111111111000100111001100000100110)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
