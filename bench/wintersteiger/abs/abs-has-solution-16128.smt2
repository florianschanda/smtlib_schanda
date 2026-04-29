(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.94383487561823731226695599616505205631256103515625p-176 {- 4250654394133572 -176 (-2.02946e-053)}
; -1.94383487561823731226695599616505205631256103515625p-176 | == 1.94383487561823731226695599616505205631256103515625p-176
; [HW: 1.94383487561823731226695599616505205631256103515625p-176] 

; mpf : + 4250654394133572 -176
; mpfd: + 4250654394133572 -176 (2.02946e-053) class: Pos. norm. non-zero
; hwf : + 4250654394133572 -176 (2.02946e-053) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01101001111 #b1111000110011111001010011001001110011010110001000100)))
(assert (= r (fp #b0 #b01101001111 #b1111000110011111001010011001001110011010110001000100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
