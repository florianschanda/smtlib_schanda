(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.947122626900571251695737373665906488895416259765625p227 {+ 4265461109583578 227 (4.19955e+068)}
; 1.947122626900571251695737373665906488895416259765625p227 | == 1.947122626900571251695737373665906488895416259765625p227
; [HW: 1.947122626900571251695737373665906488895416259765625p227] 

; mpf : + 4265461109583578 227
; mpfd: + 4265461109583578 227 (4.19955e+068) class: Pos. norm. non-zero
; hwf : + 4265461109583578 227 (4.19955e+068) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10011100010 #b1111001001110110101000001110001111010110111011011010)))
(assert (= r (fp #b0 #b10011100010 #b1111001001110110101000001110001111010110111011011010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
