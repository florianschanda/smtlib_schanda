(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.07001169545417962325473126838915050029754638671875p149 {- 315304645559020 149 (-7.63586e+044)}
; -1.07001169545417962325473126838915050029754638671875p149 | == 1.07001169545417962325473126838915050029754638671875p149
; [HW: 1.07001169545417962325473126838915050029754638671875p149] 

; mpf : + 315304645559020 149
; mpfd: + 315304645559020 149 (7.63586e+044) class: Pos. norm. non-zero
; hwf : + 315304645559020 149 (7.63586e+044) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10010010100 #b0001000111101100010010010101011001010000001011101100)))
(assert (= r (fp #b0 #b10010010100 #b0001000111101100010010010101011001010000001011101100)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
