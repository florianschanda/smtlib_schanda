(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5141239970865132402622066365438513457775115966796875p638 {+ 2315408641701051 638 (1.72703e+192)}
; 1.5141239970865132402622066365438513457775115966796875p638 | == 1.5141239970865132402622066365438513457775115966796875p638
; [HW: 1.5141239970865132402622066365438513457775115966796875p638] 

; mpf : + 2315408641701051 638
; mpfd: + 2315408641701051 638 (1.72703e+192) class: Pos. norm. non-zero
; hwf : + 2315408641701051 638 (1.72703e+192) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001111101 #b1000001110011101101000010101100110010011010010111011)))
(assert (= r (fp #b0 #b11001111101 #b1000001110011101101000010101100110010011010010111011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
