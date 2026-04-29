(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.2469879777337127269021266329218633472919464111328125p846 {+ 1112334964486541 846 (5.85111e+254)}
; Y = -1.6662807487731636779670907344552688300609588623046875p179 {- 3000661731898955 179 (-1.27678e+054)}
; 1.2469879777337127269021266329218633472919464111328125p846 = -1.6662807487731636779670907344552688300609588623046875p179 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101001101 #b0011111100111010100110101010011011011111000110001101)))
(assert (= y (fp #b1 #b10010110010 #b1010101010010001011000000000100111101111011001001011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
