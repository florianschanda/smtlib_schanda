(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.080218837417156851898880631779320538043975830078125p-351 {+ 361273526300002 -351 (2.35496e-106)}
; Y = -1.272026869644999891306724748574197292327880859375p995 {- 1225100108767984 995 (-4.25934e+299)}
; 1.080218837417156851898880631779320538043975830078125p-351 = -1.272026869644999891306724748574197292327880859375p995 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010100000 #b0001010010001001001110001100001100111010110101100010)))
(assert (= y (fp #b1 #b11111100010 #b0100010110100011100011011000110011000010001011110000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
