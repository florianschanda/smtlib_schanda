(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3954883484213478350710602171602658927440643310546875p-431 {+ 1781121178579755 -431 (2.51651e-130)}
; Y = -1.8610256543893657354971082895644940435886383056640625p888 {- 3877714816264385 888 (-3.84051e+267)}
; Z = -1.1130700513758549075049586463137529790401458740234375p370 {- 509222241243063 370 (-2.67683e+111)}
; 1.3954883484213478350710602171602658927440643310546875p-431 x -1.8610256543893657354971082895644940435886383056640625p888 -1.1130700513758549075049586463137529790401458740234375p370 == -1.2985198084067868240509824317996390163898468017578125p458
; [HW: -1.2985198084067868240509824317996390163898468017578125p458] 

; mpf : - 1344413697903517 458
; mpfd: - 1344413697903517 458 (-9.66466e+137) class: Neg. norm. non-zero
; hwf : - 1344413697903517 458 (-9.66466e+137) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01001010000 #b0110010100111110101110010111001001101011001100101011)))
(assert (= y (fp #b1 #b11101110111 #b1101110001101100001011010110001010011110100011000001)))
(assert (= z (fp #b1 #b10101110001 #b0001110011110010001010001010110011010000111110110111)))
(assert (= r (fp #b1 #b10111001001 #b0100110001101011110010110100111001010000101110011101)))
(assert  (not (= (fp.fma roundTowardPositive x y z) r)))
(check-sat)
(exit)
