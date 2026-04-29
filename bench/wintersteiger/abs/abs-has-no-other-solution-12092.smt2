(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.9308746514314611975038360469625331461429595947265625p71 {+ 4192286733315369 71 (4.55915e+021)}
; 1.9308746514314611975038360469625331461429595947265625p71 | == 1.9308746514314611975038360469625331461429595947265625p71
; [HW: 1.9308746514314611975038360469625331461429595947265625p71] 

; mpf : + 4192286733315369 71
; mpfd: + 4192286733315369 71 (4.55915e+021) class: Pos. norm. non-zero
; hwf : + 4192286733315369 71 (4.55915e+021) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001000110 #b1110111001001101110011010001100010010010110100101001)))
(assert (= r (fp #b0 #b10001000110 #b1110111001001101110011010001100010010010110100101001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
