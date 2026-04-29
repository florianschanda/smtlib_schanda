(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.7501869140333976559986695065163075923919677734375p487 {+ 3378541506499032 487 (6.99346e+146)}
; 1.7501869140333976559986695065163075923919677734375p487 S == 1.870928600472715697122794153983704745769500732421875p243
; [HW: 1.870928600472715697122794153983704745769500732421875p243] 

; mpf : + 3922313720555230 243
; mpfd: + 3922313720555230 243 (2.64452e+073) class: Pos. norm. non-zero
; hwf : + 3922313720555230 243 (2.64452e+073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111100110 #b1100000000001100001111111110010110101001000111011000)))
(assert (= r (fp #b0 #b10011110010 #b1101111011110101001011010100000000101110011011011110)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
