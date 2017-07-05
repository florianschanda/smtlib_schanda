(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.8882357752154863561599995591677725315093994140625p-915 {+ 4000258306277608 -915 (6.81727e-276)}
; Y = -1.818890915271281993881302696536295115947723388671875p-381 {- 3687956820872830 -381 (-3.69299e-115)}
; 1.8882357752154863561599995591677725315093994140625p-915 + -1.818890915271281993881302696536295115947723388671875p-381 == -1.8188909152712817718366977715049870312213897705078125p-381
; [HW: -1.8188909152712817718366977715049870312213897705078125p-381] 

; mpf : - 3687956820872829 -381
; mpfd: - 3687956820872829 -381 (-3.69299e-115) class: Neg. norm. non-zero
; hwf : - 3687956820872829 -381 (-3.69299e-115) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001101100 #b1110001101100011011010110111010110110000000011101000)))
(assert (= y (fp #b1 #b01010000010 #b1101000110100010110101011100010000010100111001111110)))
(assert (= r (fp #b1 #b01010000010 #b1101000110100010110101011100010000010100111001111101)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
