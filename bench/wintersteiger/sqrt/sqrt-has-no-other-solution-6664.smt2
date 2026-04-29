(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.73641315695822395781533487024717032909393310546875p906 {+ 3316510019267788 906 (9.39354e+272)}
; 1.73641315695822395781533487024717032909393310546875p906 S == 1.3177303050921398419603747242945246398448944091796875p453
; [HW: 1.3177303050921398419603747242945246398448944091796875p453] 

; mpf : + 1430930083617275 453
; mpfd: + 1430930083617275 453 (3.06489e+136) class: Pos. norm. non-zero
; hwf : + 1430930083617275 453 (3.06489e+136) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11110001001 #b1011110010000101100100101001100101111010110011001100)))
(assert (= r (fp #b0 #b10111000100 #b0101000101010110110001011111010101010001100111111011)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
