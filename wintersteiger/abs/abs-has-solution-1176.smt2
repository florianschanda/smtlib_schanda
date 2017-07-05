(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.43686631817758136975271554547362029552459716796875p-738 {+ 1967470987755276 -738 (9.93756e-223)}
; 1.43686631817758136975271554547362029552459716796875p-738 | == 1.43686631817758136975271554547362029552459716796875p-738
; [HW: 1.43686631817758136975271554547362029552459716796875p-738] 

; mpf : + 1967470987755276 -738
; mpfd: + 1967470987755276 -738 (9.93756e-223) class: Pos. norm. non-zero
; hwf : + 1967470987755276 -738 (9.93756e-223) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00100011101 #b0110111111010110011110001001010101001011111100001100)))
(assert (= r (fp #b0 #b00100011101 #b0110111111010110011110001001010101001011111100001100)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
