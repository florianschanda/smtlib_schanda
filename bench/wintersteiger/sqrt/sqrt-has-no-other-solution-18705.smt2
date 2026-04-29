(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.774958623018876746613159411936067044734954833984375p90 {+ 3490103365855366 90 (2.19729e+027)}
; 1.774958623018876746613159411936067044734954833984375p90 S == 1.33227573085261763452535888063721358776092529296875p45
; [HW: 1.33227573085261763452535888063721358776092529296875p45] 

; mpf : + 1496436857652108 45
; mpfd: + 1496436857652108 45 (4.68753e+013) class: Pos. norm. non-zero
; hwf : + 1496436857652108 45 (4.68753e+013) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001011001 #b1100011001100011101100000011010110011110100010000110)))
(assert (= r (fp #b0 #b10000101100 #b0101010100010000000001011011010101000100001110001100)))
(assert  (not (= (fp.sqrt roundTowardZero x) r)))
(check-sat)
(exit)
