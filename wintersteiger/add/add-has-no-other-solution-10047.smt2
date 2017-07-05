(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3089772426594266097055196951259858906269073486328125p761 {- 1391509794906957 761 (-1.58766e+229)}
; Y = -1.7197003427895649618761808596900664269924163818359375p-382 {- 3241242195605503 -382 (-1.7458e-115)}
; -1.3089772426594266097055196951259858906269073486328125p761 + -1.7197003427895649618761808596900664269924163818359375p-382 == -1.3089772426594266097055196951259858906269073486328125p761
; [HW: -1.3089772426594266097055196951259858906269073486328125p761] 

; mpf : - 1391509794906957 761
; mpfd: - 1391509794906957 761 (-1.58766e+229) class: Neg. norm. non-zero
; hwf : - 1391509794906957 761 (-1.58766e+229) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011111000 #b0100111100011001001000011111000001101110001101001101)))
(assert (= y (fp #b1 #b01010000001 #b1011100000111110010010000001101100110011011111111111)))
(assert (= r (fp #b1 #b11011111000 #b0100111100011001001000011111000001101110001101001101)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
