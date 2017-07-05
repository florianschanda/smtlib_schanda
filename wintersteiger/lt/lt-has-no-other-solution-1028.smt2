(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.1485783203056831869304232895956374704837799072265625p683 {+ 669137267964009 683 (4.60943e+205)}
; Y = 1.334205703223169781068691008840687572956085205078125p-1001 {+ 1505128680500962 -1001 (6.22583e-302)}
; 1.1485783203056831869304232895956374704837799072265625p683 < 1.334205703223169781068691008840687572956085205078125p-1001 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11010101010 #b0010011000001001001110101001001010011011100001101001)))
(assert (= y (fp #b0 #b00000010110 #b0101010110001110100000010100010101111010111011100010)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
