(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4746617859217063806198666497948579490184783935546875p848 {+ 2137686642204011 848 (2.76776e+255)}
; Y = -1.6238099270250729855291638159542344510555267333984375p829 {- 2809390154900135 829 (-5.81302e+249)}
; 1.4746617859217063806198666497948579490184783935546875p848 = -1.6238099270250729855291638159542344510555267333984375p829 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11101001111 #b0111100110000011011011110100111100110001110101101011)))
(assert (= y (fp #b1 #b11100111100 #b1001111110110010000000011110001101111110001010100111)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
