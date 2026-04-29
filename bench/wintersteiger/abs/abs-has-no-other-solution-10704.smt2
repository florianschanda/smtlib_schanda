(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1365488509684051887660416468861512839794158935546875p-601 {+ 614961354339179 -601 (1.3695e-181)}
; 1.1365488509684051887660416468861512839794158935546875p-601 | == 1.1365488509684051887660416468861512839794158935546875p-601
; [HW: 1.1365488509684051887660416468861512839794158935546875p-601] 

; mpf : + 614961354339179 -601
; mpfd: + 614961354339179 -601 (1.3695e-181) class: Pos. norm. non-zero
; hwf : + 614961354339179 -601 (1.3695e-181) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110100110 #b0010001011110100110111011001000100110111001101101011)))
(assert (= r (fp #b0 #b00110100110 #b0010001011110100110111011001000100110111001101101011)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
