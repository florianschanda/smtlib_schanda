(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0386970597550628792049565163324587047100067138671875p95 {+ 174276063893235 95 (4.1147e+028)}
; 1.0386970597550628792049565163324587047100067138671875p95 | == 1.0386970597550628792049565163324587047100067138671875p95
; [HW: 1.0386970597550628792049565163324587047100067138671875p95] 

; mpf : + 174276063893235 95
; mpfd: + 174276063893235 95 (4.1147e+028) class: Pos. norm. non-zero
; hwf : + 174276063893235 95 (4.1147e+028) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011110 #b0000100111101000000011001110111000011001011011110011)))
(assert (= r (fp #b0 #b10001011110 #b0000100111101000000011001110111000011001011011110011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
