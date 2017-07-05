(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.490640373091511872161163410055451095104217529296875p-427 {- 2209647801427854 -427 (-4.30095e-129)}
; -1.490640373091511872161163410055451095104217529296875p-427 | == 1.490640373091511872161163410055451095104217529296875p-427
; [HW: 1.490640373091511872161163410055451095104217529296875p-427] 

; mpf : + 2209647801427854 -427
; mpfd: + 2209647801427854 -427 (4.30095e-129) class: Pos. norm. non-zero
; hwf : + 2209647801427854 -427 (4.30095e-129) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01001010100 #b0111110110011010100110111000010010000110011110001110)))
(assert (= r (fp #b0 #b01001010100 #b0111110110011010100110111000010010000110011110001110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
