(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0441171559822759462576868827454745769500732421875p637 {+ 198686007242424 637 (5.95465e+191)}
; Y = -1.8082833250882230924361238066921941936016082763671875p-492 {- 3640184481677107 -492 (-1.41419e-148)}
; 1.0441171559822759462576868827454745769500732421875p637 = -1.8082833250882230924361238066921941936016082763671875p-492 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11001111100 #b0000101101001011010000110000111000100010111010111000)))
(assert (= y (fp #b1 #b01000010011 #b1100111011101011101001111110111100100111111100110011)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
