(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.81390361106189335060889789019711315631866455078125p-60 {- 3665495999493844 -60 (-1.57331e-018)}
; -1.81390361106189335060889789019711315631866455078125p-60 | == 1.81390361106189335060889789019711315631866455078125p-60
; [HW: 1.81390361106189335060889789019711315631866455078125p-60] 

; mpf : + 3665495999493844 -60
; mpfd: + 3665495999493844 -60 (1.57331e-018) class: Pos. norm. non-zero
; hwf : + 3665495999493844 -60 (1.57331e-018) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111000011 #b1101000001011011111111001010111110011011011011010100)))
(assert (= r (fp #b0 #b01111000011 #b1101000001011011111111001010111110011011011011010100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
