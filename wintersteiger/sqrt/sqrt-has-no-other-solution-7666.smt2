(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1539499901049004026987176985130645334720611572265625p733 {+ 693329118070121 733 (5.21403e+220)}
; 1.1539499901049004026987176985130645334720611572265625p733 S == 1.519177402481290517499701309134252369403839111328125p366
; [HW: 1.519177402481290517499701309134252369403839111328125p366] 

; mpf : + 2338167156353922 366
; mpfd: + 2338167156353922 366 (2.28343e+110) class: Pos. norm. non-zero
; hwf : + 2338167156353922 366 (2.28343e+110) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011011100 #b0010011101101001010001000011110010111000010101101001)))
(assert (= r (fp #b0 #b10101101101 #b1000010011101000110011110110110001111010101110000010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
