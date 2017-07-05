(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.853977571402278812229269533418118953704833984375 258 {+ 3845973072350064 258 (8.58704e+077)}
; 1.853977571402278812229269533418118953704833984375 258 I == 1.853977571402278812229269533418118953704833984375 258
; [HW: 1.853977571402278812229269533418118953704833984375 258] 

; mpf : + 3845973072350064 258
; mpfd: + 3845973072350064 258 (8.58704e+077) class: Pos. norm. non-zero
; hwf : + 3845973072350064 258 (8.58704e+077) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000001 #b1101101010011110010001100010110010110000101101110000)))
(assert (= r (fp #b0 #b10100000001 #b1101101010011110010001100010110010110000101101110000)))
(assert  (not (= (fp.roundToIntegral roundTowardZero x) r)))
(check-sat)
(exit)
