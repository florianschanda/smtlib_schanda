(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.6488662318826274866268022378790192306041717529296875p-978 {+ 2922233720119899 -978 (6.45431e-295)}
; Y = -1.5417881461378841745357703985064290463924407958984375p-150 {- 2439996893060327 -150 (-1.08025e-045)}
; 1.6488662318826274866268022378790192306041717529296875p-978 + -1.5417881461378841745357703985064290463924407958984375p-150 == -1.5417881461378841745357703985064290463924407958984375p-150
; [HW: -1.5417881461378841745357703985064290463924407958984375p-150] 

; mpf : - 2439996893060327 -150
; mpfd: - 2439996893060327 -150 (-1.08025e-045) class: Neg. norm. non-zero
; hwf : - 2439996893060327 -150 (-1.08025e-045) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00000101101 #b1010011000011100000110001110110101101010001001011011)))
(assert (= y (fp #b1 #b01101101001 #b1000101010110010101000001100000100000101110011100111)))
(assert (= r (fp #b1 #b01101101001 #b1000101010110010101000001100000100000101110011100111)))
(assert  (not (= (fp.add roundTowardNegative x y) r)))
(check-sat)
(exit)
