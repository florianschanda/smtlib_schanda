(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.873774487855939252511916492949239909648895263671875p-181 {+ 3935130457913854 -181 (6.11347e-055)}
; 1.873774487855939252511916492949239909648895263671875p-181 | == 1.873774487855939252511916492949239909648895263671875p-181
; [HW: 1.873774487855939252511916492949239909648895263671875p-181] 

; mpf : + 3935130457913854 -181
; mpfd: + 3935130457913854 -181 (6.11347e-055) class: Pos. norm. non-zero
; hwf : + 3935130457913854 -181 (6.11347e-055) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101001010 #b1101111110101111101011110101000101101011100111111110)))
(assert (= r (fp #b0 #b01101001010 #b1101111110101111101011110101000101101011100111111110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
