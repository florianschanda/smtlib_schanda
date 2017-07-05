(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.352229342238678189147549346671439707279205322265625p-1002 {+ 1586299934455066 -1002 (3.15497e-302)}
; 1.352229342238678189147549346671439707279205322265625p-1002 | == 1.352229342238678189147549346671439707279205322265625p-1002
; [HW: 1.352229342238678189147549346671439707279205322265625p-1002] 

; mpf : + 1586299934455066 -1002
; mpfd: + 1586299934455066 -1002 (3.15497e-302) class: Pos. norm. non-zero
; hwf : + 1586299934455066 -1002 (3.15497e-302) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000010101 #b0101101000101011101100111100000110011011010100011010)))
(assert (= r (fp #b0 #b00000010101 #b0101101000101011101100111100000110011011010100011010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
