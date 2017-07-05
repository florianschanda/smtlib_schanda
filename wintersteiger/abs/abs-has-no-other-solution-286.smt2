(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2963565684597309068948334243032149970531463623046875p-462 {+ 1334671331284043 -462 (1.0886e-139)}
; 1.2963565684597309068948334243032149970531463623046875p-462 | == 1.2963565684597309068948334243032149970531463623046875p-462
; [HW: 1.2963565684597309068948334243032149970531463623046875p-462] 

; mpf : + 1334671331284043 -462
; mpfd: + 1334671331284043 -462 (1.0886e-139) class: Pos. norm. non-zero
; hwf : + 1334671331284043 -462 (1.0886e-139) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000110001 #b0100101111011110000001100010100101111101010001001011)))
(assert (= r (fp #b0 #b01000110001 #b0100101111011110000001100010100101111101010001001011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
