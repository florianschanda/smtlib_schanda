(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.2686493563983527455008015749626792967319488525390625p954 {+ 1209889141368945 954 (1.93178e+287)}
; 1.2686493563983527455008015749626792967319488525390625p954 | == 1.2686493563983527455008015749626792967319488525390625p954
; [HW: 1.2686493563983527455008015749626792967319488525390625p954] 

; mpf : + 1209889141368945 954
; mpfd: + 1209889141368945 954 (1.93178e+287) class: Pos. norm. non-zero
; hwf : + 1209889141368945 954 (1.93178e+287) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110111001 #b0100010011000110001101000100011111010010100001110001)))
(assert (= r (fp #b0 #b11110111001 #b0100010011000110001101000100011111010010100001110001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
