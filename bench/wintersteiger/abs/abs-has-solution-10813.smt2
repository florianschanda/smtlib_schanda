(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3593180215320941339740556941251270473003387451171875p-238 {+ 1618224507879443 -238 (3.07739e-072)}
; 1.3593180215320941339740556941251270473003387451171875p-238 | == 1.3593180215320941339740556941251270473003387451171875p-238
; [HW: 1.3593180215320941339740556941251270473003387451171875p-238] 

; mpf : + 1618224507879443 -238
; mpfd: + 1618224507879443 -238 (3.07739e-072) class: Pos. norm. non-zero
; hwf : + 1618224507879443 -238 (3.07739e-072) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100010001 #b0101101111111100010001000000111101011000000000010011)))
(assert (= r (fp #b0 #b01100010001 #b0101101111111100010001000000111101011000000000010011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
