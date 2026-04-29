(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.451478939063671536047195331775583326816558837890625p250 {- 2033280381732778 250 (-2.62609e+075)}
; -1.451478939063671536047195331775583326816558837890625p250 | == 1.451478939063671536047195331775583326816558837890625p250
; [HW: 1.451478939063671536047195331775583326816558837890625p250] 

; mpf : + 2033280381732778 250
; mpfd: + 2033280381732778 250 (2.62609e+075) class: Pos. norm. non-zero
; hwf : + 2033280381732778 250 (2.62609e+075) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10011111001 #b0111001110010100000111111010111000011100011110101010)))
(assert (= r (fp #b0 #b10011111001 #b0111001110010100000111111010111000011100011110101010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
