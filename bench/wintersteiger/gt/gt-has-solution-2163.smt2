(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.43221730840177929877654605661518871784210205078125p443 {- 1946533709061332 443 (-3.2531e+133)}
; Y = 1.8311036672580220940886874814168550074100494384765625p-718 {+ 3742958166169481 -718 (1.32793e-216)}
; -1.43221730840177929877654605661518871784210205078125p443 > 1.8311036672580220940886874814168550074100494384765625p-718 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10110111010 #b0110111010100101110010110010010001011001110011010100)))
(assert (= y (fp #b0 #b00100110001 #b1101010011000011001101011011111001110101011110001001)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
