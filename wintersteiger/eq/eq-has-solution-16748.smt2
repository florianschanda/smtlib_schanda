(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.2166230206974961713939364926773123443126678466796875p-453 {- 975583355293115 -453 (-5.2308e-137)}
; Y = -1.8929744968889270495537857641465961933135986328125p267 {- 4021599611440328 267 (-4.48904e+080)}
; -1.2166230206974961713939364926773123443126678466796875p-453 = -1.8929744968889270495537857641465961933135986328125p267 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000111010 #b0011011101110100100110110011010101110100110110111011)))
(assert (= y (fp #b1 #b10100001010 #b1110010010011001111110100000010001001100110011001000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
