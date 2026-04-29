(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.403814827020498423593153347610495984554290771484375p285 {+ 1818620304496198 285 (8.72687e+085)}
; 1.403814827020498423593153347610495984554290771484375p285 | == 1.403814827020498423593153347610495984554290771484375p285
; [HW: 1.403814827020498423593153347610495984554290771484375p285] 

; mpf : + 1818620304496198 285
; mpfd: + 1818620304496198 285 (8.72687e+085) class: Pos. norm. non-zero
; hwf : + 1818620304496198 285 (8.72687e+085) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011100 #b0110011101100000011010001001001110110001011001000110)))
(assert (= r (fp #b0 #b10100011100 #b0110011101100000011010001001001110110001011001000110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
