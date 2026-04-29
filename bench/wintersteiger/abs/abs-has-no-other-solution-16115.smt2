(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.239352166618228778816046542488038539886474609375p388 {+ 1077946328392176 388 (7.81327e+116)}
; 1.239352166618228778816046542488038539886474609375p388 | == 1.239352166618228778816046542488038539886474609375p388
; [HW: 1.239352166618228778816046542488038539886474609375p388] 

; mpf : + 1077946328392176 388
; mpfd: + 1077946328392176 388 (7.81327e+116) class: Pos. norm. non-zero
; hwf : + 1077946328392176 388 (7.81327e+116) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110000011 #b0011110101000110001011101111111111011010000111110000)))
(assert (= r (fp #b0 #b10110000011 #b0011110101000110001011101111111111011010000111110000)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
