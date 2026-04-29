(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7115260997916144081187894698814488947391510009765625p-245 {+ 3204428677885897 -245 (3.02715e-074)}
; 1.7115260997916144081187894698814488947391510009765625p-245 S == 1.8501492371112198132010462359176017343997955322265625p-123
; [HW: 1.8501492371112198132010462359176017343997955322265625p-123] 

; mpf : + 3828731787463401 -123
; mpfd: + 3828731787463401 -123 (1.73987e-037) class: Pos. norm. non-zero
; hwf : + 3828731787463401 -123 (1.73987e-037) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100001010 #b1011011000100110100100110001000011011010111111001001)))
(assert (= r (fp #b0 #b01110000100 #b1101100110100011011000010110001000011100101011101001)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
