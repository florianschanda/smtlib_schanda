(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0647547769491956248799624518142081797122955322265625p678 {+ 291629589338857 678 (1.33532e+204)}
; 1.0647547769491956248799624518142081797122955322265625p678 | == 1.0647547769491956248799624518142081797122955322265625p678
; [HW: 1.0647547769491956248799624518142081797122955322265625p678] 

; mpf : + 291629589338857 678
; mpfd: + 291629589338857 678 (1.33532e+204) class: Pos. norm. non-zero
; hwf : + 291629589338857 678 (1.33532e+204) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010100101 #b0001000010010011110001001110000101000001101011101001)))
(assert (= r (fp #b0 #b11010100101 #b0001000010010011110001001110000101000001101011101001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
