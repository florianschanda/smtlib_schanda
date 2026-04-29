(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.5101037400434782487224083524779416620731353759765625p-312 {- 2297303013580105 -312 (-1.80987e-094)}
; -1.5101037400434782487224083524779416620731353759765625p-312 | == 1.5101037400434782487224083524779416620731353759765625p-312
; [HW: 1.5101037400434782487224083524779416620731353759765625p-312] 

; mpf : + 2297303013580105 -312
; mpfd: + 2297303013580105 -312 (1.80987e-094) class: Pos. norm. non-zero
; hwf : + 2297303013580105 -312 (1.80987e-094) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01011000111 #b1000001010010110001010001010000100001101110101001001)))
(assert (= r (fp #b0 #b01011000111 #b1000001010010110001010001010000100001101110101001001)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
