(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.513211153368671180174942492158152163028717041015625p-3 {+ 2311297559073530 -3 (0.189151)}
; 1.513211153368671180174942492158152163028717041015625p-3 | == 1.513211153368671180174942492158152163028717041015625p-3
; [HW: 1.513211153368671180174942492158152163028717041015625p-3] 

; mpf : + 2311297559073530 -3
; mpfd: + 2311297559073530 -3 (0.189151) class: Pos. norm. non-zero
; hwf : + 2311297559073530 -3 (0.189151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01111111100 #b1000001101100001110011100101111110101001001011111010)))
(assert (= r (fp #b0 #b01111111100 #b1000001101100001110011100101111110101001001011111010)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
